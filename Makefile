#rule for making report
report.html: R/report.Rmd figs/KM_figure.png figs/Table_Redo.rds
	Rscript -e "rmarkdown::render('R/report.Rmd', output_file='../output/report.html')"

#rule for data 
data/Num_of_Redo.rds: R/Import.R
	Rscript R/Import.R

#rule for making a summary table
figs/Table_Redo.rds: R/Table_Redo.R data/Num_of_Redo.rds
	Rscript R/Table_Redo.R

#rule for making KM curve
figs/KM_figure.png: R/KM_figure.R  data/Num_of_Redo.rds
	Rscript R/KM_figure.R

.PHONY: report