class Bottles
  def verse(number)
    [first_line(number), second_line(number-1)].join
  end

  def plural?(number)
    number > 1
  end

  def first_line(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"
  end

  def second_line(number)
    "Take one down and pass it around, #{number} #{plural?(number) ? "bottles" : "bottle"} of beer on the wall.\n"
  end
end