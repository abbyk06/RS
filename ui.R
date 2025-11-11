#UI Defined 
ui <- fluidPage(theme = shinytheme("superhero"),
                navbarPage(
                    
                      # mainPanel
                    "Welcome to GFG",
                  
                      # Tab 1
                    tabPanel("Tab 1",
                             mainPanel(
                                 tags$h3("Register to GFG:"),
                                 textInput("txt1", "Name:", ""),
                                 textInput("txt2", "Surname:", ""),
                                  textInput("txt3", "Email:", ""),
                                  textInput("txt4", "Mobile.No:", ""),
                                 textInput("txt5", "Education:", ""),
                                 textInput("txt6", "College:", ""),
                                 textInput("txt7", "Programming Language:", ""),
                                 textInput("txt8", "Area of Interest:", ""),
                                 
                                 hr(),
                                h4("Here is your Details"),
                               verbatimTextOutput("txtout"),
                             )),
                      # TabPanel
                    tabPanel("Tab 2",
                             h3("Hello !! Here is the Plot Graph,
                                 Slider, Dropdown and Date picker!!!"))),
                             hr(),
                             (
  plotOutput("plot") #PlotGraph
),
                             hr(),
                             sidebarPanel(
      sliderInput("slider", "Select a value:", min = 10,
                  max = 500, value = 125),
      selectInput("dropdown", "Select an option:",
                  c("Python", "JAVA", "C++")),
      dateInput("datepicker", "Select a date:"),
      ),#SidebarPanel
    mainPanel(
      h3("Selected values:"),
      textOutput("selected_value"),
      textOutput("selected_option"),
      textOutput("selected_date"),
    )
 )