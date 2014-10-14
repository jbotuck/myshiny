getAges <- function(){
  c("Newborn", "Preschool aged", "School aged", "Teen", "Adult")
}
isEnough <- function(age, hours){
  minhrs <- c(16, 11, 10, 9, 7)
  hours >= minhrs[which(getAges() == age)]
}