#!/usr/bin/env Rscript

rm(list=ls())

library(knitr)
args <- commandArgs(TRUE)

if (length(args) < 6) stop("Not all args are set; required: projdir proj.name.prefix sample.info ")

proj.dir <- args[1]
proj.name.pref <- args[2]
sample.info <- args[3]


#user.run=Sys.getenv("USER")

#wrk.dir=file.path(proj.dir,"results",data.type,"report")
wrk.dir=file.path(projdir,paste(proj.name.prefix,"report",sep="."))
dir.create(wrk.dir, recursive = TRUE)


rmarkdown::render('6556_QC_report_v0.1.Rmd', output_file = file.path(wrk.dir,paste("QC_report",proj.name.pref,'html', sep=".")))
