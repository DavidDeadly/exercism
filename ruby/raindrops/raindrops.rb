class Raindrops
  def self.convert(num)
    is_divisible_by_three = (num % 3).zero?
    is_divisible_by_five = (num % 5).zero?
    is_divisible_by_seven = (num % 7).zero?

    if !is_divisible_by_three && !is_divisible_by_five && !is_divisible_by_seven
      return num.to_s
    end

    sound = ""

    if is_divisible_by_three
      sound.concat "Pling"
    end

    if is_divisible_by_five
      sound.concat "Plang"
    end

    if is_divisible_by_seven
      sound.concat "Plong"
    end

    return sound
  end
end
