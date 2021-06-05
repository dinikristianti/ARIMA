library(shiny)
  sidebarLayout(
    sidebarPanel(
      fileInput('TextFile', 'Choose Text file to upload .Text Document',
                accept = c(
                  'text/csv',
                  'text/comma-separated-values',
                  'text/tab-separated-values',
                  'text/plain','.xls'
                )
      ),
      tags$hr(),
      radioButtons('skipper', 'Lines to skip',
                             c(Zero=0,
                               One=1
                               )),
      tags$hr(),
      numericInput('year','Enter Starting Year',value =2018 ),
      tags$hr(),
      numericInput('month','Enter Starting month',value=01),
      tags$hr(),
      numericInput('frequency','Enter Frequency',value=12)
    ),
    
    
       mainPanel(
      tags$style(type="text/css",
                         ".shiny-output-error { visibility: hidden; }",
                         ".shiny-output-error:before { visibility: hidden; }"
    ),
    navbarPage("Bali Hotels",
               tabPanel("HOME"),
               fluidRow(uiOutput("homefile"),
                        align="left"),
               h3("HASIL ARIMA"),
                        fluidRow(splitLayout(cellWidths = c("50%", "50%"), 
                                             plotOutput("contents1"), plotOutput("contents2")),
                                             hr("By Dini Kristianti"),
                                             
                                 
                                 
    
      )
    
    )
  ))
