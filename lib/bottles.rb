class Bottles
  def verse(number)
    <<-VERSE
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} #{plural?(number - 1) ? "bottles" : "bottle"} of beer on the wall.
    VERSE
  end

  def plural?(number)
    number > 1
  end
end