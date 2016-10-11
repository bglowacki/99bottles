class FirstLine
  def initialize(number)
    @number = number
  end

  def to_s
    "#{@number} #{plural?(@number) ? "bottles" : "bottle"} of beer on the wall, #{@number} #{plural?(@number) ? "bottles" : "bottle"} of beer.\n"
  end

  def plural?(number)
    number > 1
  end
end

class SecondLine
  def initialize(number)
    @number = number - 1
  end

  def to_s
    "Take one down and pass it around, #{@number} #{plural?(@number) ? "bottles" : "bottle"} of beer on the wall.\n"
  end

  def plural?(number)
    number > 1
  end
end


class Bottles
  def verse(number)
    [FirstLine.new(number).to_s, SecondLine.new(number).to_s].join
  end
end