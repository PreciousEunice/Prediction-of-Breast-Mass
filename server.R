library(shiny)
library(mlbench)
data("BreastCancer")
df <- BreastCancer[,-c(1,7)]

shinyServer(function(input,output){
    output$class <- renderText({

        model <- glm(Class~., data=df, family=binomial)

        breast <- data.frame(Cl.thickness=input$thick,
                         Cell.size=input$size,
                         Cell.shape=input$shape,
                         Marg.adhesion=input$margin,
                         Epith.c.size=input$epith,
                         Bl.cromatin=input$chr,
                         Normal.nucleoli=input$nuc,
                         Mitoses=input$mit)

        pred <- predict(model, newdata=breast, type="response")
        predicted <- ifelse(pred>0.5, "malignant", "benign")
        predicted
    })
})
