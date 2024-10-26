################################################################################
# Author: J. Jameson
# SMDM Short Course 2024
#
# Run all
################################################################################
options(warn=-1)

# Capture all output to a log file
sink("outputs/logs/log.txt")
cat("Log started: ", date(), "\n\n")

# Load libraries ---------------------------------------------------------------
library(ISLR)
library(tidyverse)
library(stargazer)

# Load data -------------------------------------------------------------------
data <- Credit

# Run all scripts -------------------------------------------------------------
source("src/clean.R", echo=TRUE) # run the cleaning script
source("src/tables.R", echo=TRUE) # run the tables script
source("src/figures.R", echo=TRUE) # run the figures script

# Run manuscript --------------------------------------------------------------
manuscript_path <- "manuscript/manuscript.tex"
tinytex::latexmk(manuscript_path)
file.remove("manuscript.log")

sink()
