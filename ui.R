library(shiny)

shinyUI (fluidPage(
    titlePanel("Prediction of Breast Mass"),
    sidebarLayout(
        sidebarPanel(
            h4("Select the grading based on the histopathological assessment"),
            selectInput("thick", label = "Cell Thickness", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("size", label = "Cell Size", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("shape", label = "Cell Shape", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("margin", label = "Margin Adhesion", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("epith", label = "Epithelial Size", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("chr", label = "Bland Chromatin", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("nuc", label = "Normal nucleoli", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9", "10"="10"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            selectInput("mit", label = "Mitoses", choices=c("1"="1", "2"="2","3"="3",
                        "4"="4", "5"="5", "6"="6", "7"="7", "8"="8", "9"="9"),
                        selected=NULL, multiple=FALSE, selectize = TRUE),
            submitButton("Submit")
        ),
        mainPanel(h3("Predicted class of the tissue specimen is:"),
                  h1(textOutput("class"),
                  )
                  )
    )
))
