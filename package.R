packages <- c("shiny", "shinythemes", "ggplot2", "remotes")
for (pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE, repos = "https://cloud.r-project.org")
    }
}

library(shiny)
library(shinythemes)
library(ggplot2)
remotes::install_github("rstudio/shinytableau")