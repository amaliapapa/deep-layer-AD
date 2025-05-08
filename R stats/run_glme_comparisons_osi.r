run_glme_comparisons_osi <- function(file_path, sheet_name) {
  # Load required libraries
  library(lme4)
  library(tidyverse)
  library(readxl)
  library(car)

  # Read the data
  T_B <- read_excel(file_path, sheet = sheet_name)
  T_B$OSI <- 1 / T_B$OSI
  
  # Helper function to fit and compare two models, return Anova result
  fit_and_compare <- function(formula, data) {
    model1 <- glmer(formula, family = inverse.gaussian, data = data)
    model2 <- glmer(formula, family = Gamma, data = data)

    aic_values <- AIC(model1, model2)
    best_model <- list(model1, model2)[[which.min(aic_values$AIC)]]
    anova_result <- Anova(best_model, type = 3)

    return(list(
      AIC = aic_values,
      Anova = anova_result
    ))
  }

  # Run comparisons on full data with interaction
  result_full <- fit_and_compare(OSI ~ Genotype * Area + (1 | ID), T_B)

  # Subset: crtx_sup
  T_B_sup <- filter(T_B, Area == "crtx_sup")
  result_sup <- fit_and_compare(OSI ~ Genotype + (1 | ID), T_B_sup)

  # Subset: crtx_deep
  T_B_deep <- filter(T_B, Area == "crtx_deep")
  result_deep <- fit_and_compare(OSI ~ Genotype + (1 | ID), T_B_deep)

  # Bonferroni correction for sup and deep (2 comparisons)
  bonferroni_correct <- function(anova_table) {
    pvals <- anova_table$`Pr(>Chisq)`
    pvals_corrected <- p.adjust(pvals, method = "bonferroni", n = 2)
    anova_table$`Pr(>Chisq)_Bonf` <- pvals_corrected
    return(anova_table)
  }

  result_sup$Anova <- bonferroni_correct(result_sup$Anova)
  result_deep$Anova <- bonferroni_correct(result_deep$Anova)

  # Return all results
  return(list(
    full_model = result_full,
    crtx_sup = result_sup,
    crtx_deep = result_deep
  ))
}