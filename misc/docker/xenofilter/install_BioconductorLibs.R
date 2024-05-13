#!/usr/bin/env Rscript

# script to install Bioconductor R packages required for xenofilter
# based on https://github.com/casbap/ncRNA/blob/main/docker/rpkgs.R
# used in images based on rocker/tidyverse:4.2.3

# if (!require("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install(version = "3.16")


BiocManager::install(c('Rsamtools','GenomicAlignments','BiocParallel'),
	ask=FALSE, update=FALSE)

print("Install Bioconductor packages, done!")
