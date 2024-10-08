# R version 4.4.1
# Updated packages immediately prior to running code

## 1. Install + Load Packages -----

# Name required packages
CRAN_packages <- c("tidyverse", "workflowr", "BiocManager", "remotes",
                   "viridis", "patchwork", "cowplot", "ggnewscale")
Bioc_packages <- c(NULL)
GitHub_packages <- c(NULL)
names(GitHub_packages) <- c(NULL)
# Install missing packages
installed_CRAN_packages <-  CRAN_packages %in% rownames(installed.packages())
installed_Bioc_packages <-  Bioc_packages %in% rownames(installed.packages())
current_packages <- c(installed_CRAN_packages, installed_Bioc_packages)

if (any(current_packages == FALSE)) {
  install.packages(CRAN_packages[!installed_CRAN_packages])
  library(BiocManager)
  BiocManager::install(Bioc_packages[!installed_Bioc_packages])
  library(remotes)
  remotes::install_github(GitHub_packages)
}

# Load Packages
invisible(lapply(c(CRAN_packages, Bioc_packages, names(GitHub_packages)), library, character.only = TRUE))

# Clean objects
rm(list = ls())

## Former packages

## Possible Suites
# CytoPipeline / CytoPipelineGUI - automate pre-processing and gating
# PICAFlow - Pipeline from raw data to full processing
# cyCombine - integrate single-cell cytometry datasets

