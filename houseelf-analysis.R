#Repairing Code for House_Elf Analysis
dna <- read.csv("house_elf_dna_data_1.csv")
#Problem 6
GC_Content <- function(sequence){
  str_to_lower(sequence)
  Gs <- str_count(sequence, "G")
  Cs <- str_count(sequence, "C")
  gc_content <- (Gs + Cs) / str_length(sequence) * 100 
  return(gc_content)}
GC_Content(dna$dnaseq)
