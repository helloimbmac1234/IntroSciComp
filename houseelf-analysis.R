#Repairing Code for House_Elf Analysis
dna <- read.csv("house_elf_dna_data_1.csv")
#Problem 6
GC_Content <- function(sequence){
  str_to_lower(sequence)
  Gs <- str_count(sequence, "G")
  Cs <- str_count(sequence, "C")
  gc_content <- (Gs + Cs) / str_length(sequence) * 100 
  return(gc_content)}
g_c_content <- GC_Content(dna$dnaseq)
#Problem 7
get_size_class <- function(ear_length){
  # Calculate the size class for one or more earth lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}
#new_data_file
Size_Class <- print(get_size_class(dna$earlength))
house_elf_analysis <- data.frame(dna$id,Size_Class,g_c_content)
write.csv(house_elf_analysis, file = "house_elf_analysis.csv")
