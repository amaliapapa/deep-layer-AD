run_glme_aav <- function(file_path, sheet_name, outcome_var) {
  # Load libraries
  library(lme4)
  library(tidyverse)
  library(readxl)
  library(car)

  # Read data
  T_B <- read_excel(file_path, sheet = sheet_name)
  if (outcome_var == "BR") {
    T_B[[outcome_var]] <- sqrt(T_B[[outcome_var]])
  }
  # Dynamically create formula: outcome ~ AAV + (1|ID)
  formula <- as.formula(
    paste0(outcome_var, " ~ AAV + (1 | ID)")
  )

  # Safe glmer fitting (default settings)
  safe_glmer <- function(formula, family, data) {
    fit <- tryCatch({
      model <- glmer(
        formula,
        family = family,
        data = data,
        control = glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 100000))
      )
      if (!isSingular(model) && is.null(model@optinfo$conv$lme4$messages)) {
        return(model)
      } else {
        return(NULL)
      }
    }, error = function(e) NULL)
    return(fit)
  }

  # Fit both models
  model1 <- safe_glmer(formula, inverse.gaussian, T_B)
  model2 <- safe_glmer(formula, Gamma, T_B)

  # Choose best model
  valid_models <- list()
  if (!is.null(model1)) valid_models$model1 <- model1
  if (!is.null(model2)) valid_models$model2 <- model2

  if (length(valid_models) == 0) {
    warning("Both models failed to converge or are singular.")
    return(NULL)
  }

  if (length(valid_models) == 1) {
    best_model <- valid_models[[1]]
  } else {
    aic_values <- AIC(valid_models$model1, valid_models$model2)
    best_model <- valid_models[[which.min(aic_values$AIC)]]
  }

  # Return Anova table
  anova_result <- Anova(best_model, type = 3)
  return(list(
    model = best_model,
    Anova = anova_result
  ))
}