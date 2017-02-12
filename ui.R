### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/justusfrantz/capstone

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone: Course Project",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: Sachin Raje</strong>"),
                            br(),
                            HTML("<strong>Date: 12 Feb 2017</strong>"),
                            br(),
#                            img(src = "/Users/Sachin/OneDrive%20-%20emiratesgroup/coursera/capstone/headers2.png"),
                            # Sidebar
                            sidebarLayout(
                               sidebarPanel(
#                                  helpText("Enter a partially complete sentence to begin the next word prediction"),
                                  textInput("inputString", h4("Enter a partial sentence to predict next word"),value = ""),
#                                  br(),
                                  h4("Only English words are supported."),
                                  br(),
                                  br(),
                                  br()
                               ),
                               mainPanel(
                                  h2("Predicted Next Word"),
                                  verbatimTextOutput("prediction"),
                                  strong("Sentence Input:"),
                                  tags$style(type='text/css', '#text1 {background-color: rgba(255,128,128,0.40); color: blue;}'), 
                                  textOutput('text1'),
                                  br(),
                                  strong("Note:"),
                                  tags$style(type='text/css', '#text2 {background-color: rgba(255,128,128,0.40); color: black;}'),
                                  textOutput('text2')
                               )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
#                               img(src = "./headers.png"),
                               includeMarkdown("./about.md")
                            )
                   )
)
)