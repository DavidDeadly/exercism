//
// This is only a SKELETON file for the 'Armstrong Numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isArmstrongNumber = (number) => {
  const powerNumber = number.toString().length;
  const numberDigits = number.toString().split("");

  const result = numberDigits.reduce((acc, value) => {
    return acc + value ** powerNumber;
  }, 0);

  return result === number;
};
