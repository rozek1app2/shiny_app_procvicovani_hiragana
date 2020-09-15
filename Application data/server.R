data <- c("あ" = "a", "え" = "e", "い" = "i", "お" = "o", "う" = "u",
          "か" = "ka", "け" ="ke", "き" = "ki", "こ" = "ko", "く" = "ku",
          "さ" = "sa", "し" = "ši", "す" = "su", "せ" = "se","そ" = "so",
          "た"	= "ta", "ち" = "či","つ" = "cu (tsu)","て" = "te","と" = "to",
          "な" = "na","に" = "ni","ぬ" = "nu",	"ね" = "ne", "の" = "no",
          "は" = "ha","ひ" = "hi","ふ" = "fu","へ" = "he", "ほ" = "ho",
          "ま" = "ma","み" = "mi","む" = "mu", "め" ="me","も" = "mo",
          "や" = "ja", "ゆ" = "yu",	"よ" = "yo",
          "ら"="ra","り"="ri","る"="ru","れ"="re","ろ"="ro",
          "わ" = "wa","を" = "wo",
          "ん" = "n"
          )
#nahodne bez opakovani, po kazdem cyklu jiny mix
# x <- 0
library(shiny)

shinyServer((function(input, output) {
  values <- reactiveValues(one = 0, two = 0)
  
  symbol_final <- ""
  index <- 0
  mixed_data <- ""
  
  values$one <- 1 # pocatecni stisknuti tlacitka
  values$two <- 0
  
  observeEvent(input$button_1, {
    values$one <- 1
    values$two <- 0
    
  })
  
  observeEvent(input$button_2, {
    values$one <- 0
    values$two <- 1
    
  })
  
  
  
  output$Output_1 <- renderText(
    {
      
      
      
      if(values$one) {
        
        if (index == 0){
          index <<- 1
          mixed_data <<- sample(data)
        }
          
        symbol_final <<- names(mixed_data[index])
        index <<- index+1
        if(index > length(data)) {
          index <<- 1
          mixed_data <<- sample(data)
        }
      
        
        return(symbol_final)
      } else if(values$two)
        return(data[symbol_final])
    }
    
  )
  
}))