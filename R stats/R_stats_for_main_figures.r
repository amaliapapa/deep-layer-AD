source("PATH/R stats/run_glme_comparisons_spkr.r")

source("PATH/R stats/run_glme_comparisons_osi.r")

source("PATH/R stats/run_glme_comparisons_dsi.r")

source("PATH/R stats/run_glme_comparisons_br.r")

source("run_glme_aav.r")

results <- run_glme_comparisons_spkr("PATH/Figure 3.xlsx", "3D")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_spkr("PATH/Figure 3.xlsx", "3E")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_spkr("PATH/Figure 3.xlsx", "3F")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_spkr("PATH/Figure 3.xlsx", "3G")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_osi("PATH/Figure 4.xlsx", "4D")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_dsi("PATH/Figure 4.xlsx", "4G")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_spkr("PATH/Figure 5.xlsx", "5A")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_spkr("PATH/Figure 5.xlsx", "5B")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)


results <- run_glme_comparisons_br("PATH/Figure 5.xlsx", "5C")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

results <- run_glme_comparisons_br("PATH/Figure 5.xlsx", "5D")

print(results$full_model$Anova)
print(results$crtx_sup$Anova)
print(results$crtx_deep$Anova)

result1 <- run_glme_aav("PATH/Figure 7.xlsx", "7D left", "SpikeRate")
print(result1$Anova)

result1 <- run_glme_aav("PATH/Figure 7.xlsx", "7D right", "SpikeRate")
print(result1$Anova)

result1 <- run_glme_aav("PATH/Figure 7.xlsx", "7E left", "SpikeRate")
print(result1$Anova)

result1 <- run_glme_aav("PATH/Figure 7.xlsx", "7E right", "SpikeRate")
print(result1$Anova)

result1 <- run_glme_aav("PATH/Figure 7.xlsx", "7F left", "BR")
print(result1$Anova)

result1 <- run_glme_aav("PATH/Figure 7.xlsx", "7F right", "BR")
print(result1$Anova)
