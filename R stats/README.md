R code used to perform statistical analyses for the main figures of the study using Generalized Linear Mixed Effects Models (GLMMs).

Required R Packages
Ensure the following libraries are installed:

lme4 – for fitting GLMMs

tidyverse – for data manipulation and visualization

readxl – for reading Excel files

car – for type III ANOVA and other model utilities

Install any missing packages with:
install.packages(c("lme4", "tidyverse", "readxl", "car"))

How to Use:
Run the script R_stats_for_main_figures.r to reproduce the statistical comparisons used in the main figures of the paper.

Supplemental Analyses:
Comparisons for the supplemental figures can be reproduced in a similar fashion by adapting the input file paths and sheet names accordingly.
