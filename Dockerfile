FROM rocker/tidyverse

#install sofeware and Rpackages
RUN apt-get update
RUN sudo apt-get install -y pandoc 

RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('gtsummary')"
RUN Rscript -e "install.packages('survival')"


#load packages
RUN Rscript -e "library(rmarkdown)"
RUN Rscript -e "library(here)"

#make a project directory called HW5
RUN mkdir /HW5

#set the workding directory 
WORKDIR /HW5

#copy contains
COPY ./ /HW5/

# make R scripts executable
RUN chmod +x /HW5/R/*.R

CMD make report.html