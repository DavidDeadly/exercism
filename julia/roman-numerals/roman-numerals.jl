const rules = [
  [ "M", 1000 ],
  [ "CM", 900 ],
  [ "D", 500 ],
  [ "CD", 400 ],
  [ "C", 100 ],
  [ "XC", 90 ],
  [ "L", 50 ],
  [ "XL", 40 ],
  [ "X", 10 ],
  [ "IX", 9 ],
  [ "V", 5 ],
  [ "IV", 4 ],
  [ "I", 1 ],
]

function to_roman(number)

  if number <= 0
    throw(ErrorException("Non zero or negative numbers allowed"))
  end

  result = ""

  for rule in rules
    arabic = rule[2]
    roman_char = rule[1]

    while number >= arabic 
      number -= arabic
      result = string(result, roman_char)
    end
  end

  return result
end

