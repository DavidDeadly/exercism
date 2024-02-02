//
// This is only a SKELETON file for the 'Reverse String' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// export const reverseString = string => string.split("").reverse().join("");
export const reverseString = string => {
  let reversedString = '';

  for(const char of string) {

    reversedString = char + reversedString;
  }

  return reversedString;
}
