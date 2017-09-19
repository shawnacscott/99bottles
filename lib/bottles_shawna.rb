class Bottles
  def song
    verses(99, 0)
  end

  def verses(highest_num, lowest_num)
    nums_bottles = (lowest_num..highest_num).to_a.reverse
    verses = nums_bottles.map { |num_bottles| verse(num_bottles) }

    verses.join("\n")
  end

  def verse(num_bottles)
    if num_bottles == 0
      zero_verse
    elsif num_bottles == 1
      one_verse
    else
      next_num_bottles = num_bottles - 1

      next_num_bottles_suffix = next_num_bottles == 1 ? '' : 's'
      "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\n" \
      "Take one down and pass it around, #{next_num_bottles} bottle#{next_num_bottles_suffix} of beer on the wall.\n"
    end
  end

  private def one_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  private def zero_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
