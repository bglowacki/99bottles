class Line

  def plural?(number)
    number != 1
  end

  def verse_0?
    @number == 0
  end

  def number_form
    verse_0? ? "no more" : "#{@number}"
  end
end

class FirstLine < Line
  def initialize(number)
    @number = number
  end

  def to_s
    "#{number_form.capitalize} #{plural?(@number) ? "bottles" : "bottle"} of beer on the wall, #{number_form} #{plural?(@number) ? "bottles" : "bottle"} of beer.\n"
  end


end

class SecondLine < Line
  def initialize(number)
    @number = number - 1
  end

  def to_s
    if verse_0?
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take #{verse_1? ? "it" : "one"} down and pass it around, #{number_form} #{plural?(@number) ? "bottles" : "bottle"} of beer on the wall.\n"
    end
  end

  def plural?(number)
    number != 1
  end

  def verse_1?
    @number == 0
  end

  def verse_0?
    @number == -1
  end

  def number_form
    verse_1? ?  "no more" : "#{@number}"
  end
end


class Bottles
  def song
    verses(99, 0)
  end

  def verse(number)
    [FirstLine.new(number).to_s, SecondLine.new(number).to_s].join
  end

  def verses(from_verse_number, to_verse_number)
    span = (to_verse_number..from_verse_number).to_a.reverse
    span.map {|n| verse(n)}.join("\n")
  end
end
