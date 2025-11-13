source("tabs/about_tab.R")

ui <- fluidPage(
  theme = shinytheme("darkly"),
  navbarPage(
    ":D",
    about_tab
  )
)
