defmodule RomanNumerals do
  @rules [
    { "M", 1000 },
    { "CM", 900 },
    { "D", 500 },
    { "CD", 400 },
    { "C", 100 },
    { "XC", 90 },
    { "L", 50 },
    { "XL", 40 },
    { "X", 10 },
    { "IX", 9 },
    { "V", 5 },
    { "IV", 4 },
    { "I", 1 },
  ]

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    { _zero, roman_number } = Enum.reduce(
      @rules,
      { number, "" },
      fn { roman, arabic }, { remaining, roman_result } -> 
        make_roman(remaining, roman_result, arabic, roman)
      end
    )

    roman_number
  end

  defp make_roman(num, result, arabic_value, roman_char) when num >= arabic_value do
    IO.puts("Current value: #{num}, arabic: #{arabic_value}")
    
    new_num = num - arabic_value
    new_result = result <> roman_char

    make_roman(new_num, new_result, arabic_value, roman_char)
  end

  defp make_roman(num, result, _arabic_value, _roman_char) do
    { num, result }
  end

end
