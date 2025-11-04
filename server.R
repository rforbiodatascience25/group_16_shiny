# Define the Server (Backend)
server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(length = input$n_bases, base_probs = c(input$prob_A, input$prob_G, input$prob_C, input$prob_T))
  })
  
  output$rna <- renderText({
    transcribe_dna(dna=input$DNA_Seq)
  })
  
  output$aa <- renderText ({
    translate_rna(rna=input$RNA_Seq)
  })
}


