// export const reverseString = string => string.split("").reverse().join("");
export const reverseString = string => {
  let reversedString = '';

  for(const char of string) {

    reversedString = char + reversedString;
  }

  return reversedString;
}
