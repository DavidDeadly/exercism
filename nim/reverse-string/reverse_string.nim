proc reverse*(str: string): string =
  var resultString = "";

  for letter in str:
    resultString = letter & resultString;

  return resultString;

