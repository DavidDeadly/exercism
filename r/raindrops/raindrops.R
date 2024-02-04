raindrops <- function(number) {
  is_divided_by_three <- number %% 3 == 0;
  is_divided_by_five <- number %% 5 == 0;
  is_divided_by_seven <- number %% 7 == 0;
  
  if(
    !is_divided_by_three &&
    !is_divided_by_five &&
    !is_divided_by_seven
  ) {
    return(toString(number))
  }

  sound <- ""

  if (is_divided_by_three) {
    sound = paste(sound, "Pling", sep = "")
  }

  if (is_divided_by_five) {
    sound = paste(sound, "Plang", sep = "")
  }

  if (is_divided_by_seven) {
    sound = paste(sound, "Plong", sep = "")
  }
  
  return(sound)
}
