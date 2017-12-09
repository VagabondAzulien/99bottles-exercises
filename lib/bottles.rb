#Main
class Bottles
  def initialize; end

  def song
    verses(99, 0)
  end

  def verses(s, e)
    result = ''
    nums = *s.downto(e)
    nums.each do |num|
      result << verse(num)
      result << "\n" unless num == nums.last
    end

    result
  end

  def verse(num)
    "#{ num == 0 ? 'No more' : num } bottle#{ num == 1 ? '' : 's' } "\
      "of beer on the wall, "\
      "#{num == 0 ? 'no more' : num } bottle#{ num ==1 ? '' : 's' } of beer.\n"\
      "#{ second(num) }"
  end

  def second(num)
    if (num == 0)
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take #{ num == 1 ? 'it' : 'one' } down and pass it around, "\
      "#{ num == 1 ? 'no more' : num - 1 } bottle#{ num == 2 ? '' : 's'  } "\
      "of beer on the wall.\n"
    end
  end

end
