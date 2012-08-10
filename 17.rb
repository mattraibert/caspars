require './sum'

class Integer
  def english
    {1 => 'one',
     2 => 'two',
     3 => 'three',
     4 => 'four',
     5 => 'five',
     6 => 'six',
     7 => 'seven',
     8 => 'eight',
     9 => 'nine',
     10 => 'ten',
     11 => 'eleven',
     12 => 'twelve',
     13 => 'thirteen',
     14 => 'fourteen',
     15 => 'fifteen',
     16 => 'sixteen',
     17 => 'seventeen',
     18 => 'eighteen',
     19 => 'nineteen',
     20 => 'twenty',
     30 => 'thirty',
     40 => 'forty',
     50 => 'fifty',
     60 => 'sixty',
     70 => 'seventy',
     80 => 'eighty',
     90 => 'ninety'
    }
  end

  def tens
    return english[self] if (english[self])
    tens, ones = self.divmod 10
    words = "#{english[tens * 10]} " if tens != 0
    words + "#{english[ones]}"
  end

  def hundreds
    hundreds, tens_ones = self.divmod 100
    words = "#{english[hundreds]} hundred"
    words += " and #{tens_ones.to_english}" if tens_ones != 0
    return words
  end

  def to_english
    return tens if self <= 99
    return hundreds if self <= 999
    return "one thousand"
  end
end

class String
  def no_ws
    gsub(/ /, '')
  end
end

puts (1..1000).map { |x| x.to_english.no_ws.size }.sum