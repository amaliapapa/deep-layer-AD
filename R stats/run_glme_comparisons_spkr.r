run_glme_comparisons_spkr <- function(file_path, sheet_name) {
  # Load libraries
  library(lme4)
  library(tidyverse)
  library(readxl)
  library(car)

  # Read data
  T_B <- read_excel(file_path, sheet = sheet_name)

  # Helper: safely fit a glmer model and check convergence/singularity
  safe_glmer <- function(formula, family, data) {
    fit <- tryCatch({
      model <- glmer(formula, family = family, data = data)
      if (!isSingular(model) && is.null(model@optinfo$conv$lme4$messages)) {
        return(model)
      } else {
        return(NULL)
      }
    }, error = function(e) NULL)
    return(fit)
  }

  # Core model comparison logic
  fit_and_compare <- function(formula, data) {
    model1 <- safe_glmer(formula, inverse.gaussian, data)
    model2 <- safe_glmer(formula, Gamma, data)

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

    anova_result <- Anova(best_model, type = 3)
    return(list(
      model = best_model,
      Anova = anova_result
    ))
  }

  # Bonferroni correction helper
  bonferroni_correct <- function(anova_table) {
    pvals <- anova_table$`Pr(>Chisq)`
    pvals_corrected <- p.adjust(pvals, method = "bonferroni", n = 2)
    anova_table$`Pr(>Chisq)_Bonf` <- pvals_corrected
    return(anova_table)
  }

  # Run comparisons
  result_full <- fit_and_compare(SpikeRate ~ Genotype * Area + (1 | ID), T_B)

  T_B_sup <- filter(T_B, Area == "crtx_sup")
  result_sup <- fit_and_compare(SpikeRate ~ Genotype + (1 | ID), T_B_sup)

  T_B_deep <- filter(T_B, Area == "crtx_deep")
  result_deep <- fit_and_compare(SpikeRate ~ Genotype + (1 | ID), T_B_deep)

  # Apply Bonferroni only where model exists
  if (!is.null(result_sup)) {
    result_sup$Anova <- bonferroni_correct(result_sup$Anova)
  }
  if (!is.null(result_deep)) {
    result_deep$Anova <- bonferroni_correct(result_deep$Anova)
  }

  # Return results
  return(list(
    full_model = result_full,
    crtx_sup = result_sup,
    crtx_deep = result_deep
  ))
}