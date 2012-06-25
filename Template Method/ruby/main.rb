# Displayクラスの実装
class Display
  def open
    raise 'Called abstract method: open'
  end

  def prints
    raise 'Called abstract method: print'
  end

  def close
    raise 'Called abstract method: close'
  end

  def display
    open
    prints
    close
  end
end

# CharDisplayクラスの実装
class CharDisplay < Display
  def initialize(ch)
    @ch = ch
  end

  def open
    print "<<"
  end

  def prints
    5.times do
      print @ch
    end
  end

  def close
    puts ">>"
  end
end

# StringDisplayクラスの実装
class StringDisplay < Display
  def initialize(string)
    @string = string
    @width = string.length
  end

  def open
    printLine
  end

  def prints
    5.times do
      puts "|" + @string + "|"
    end
  end

  def close
    printLine
  end

  def printLine
    print "+"
    @width.times do
      print "-"
    end
    puts "+"
  end
end

# Main関数の実装
d1 = CharDisplay.new "H"
d2 = StringDisplay.new "Hello World!!"

d1.display
d2.display

# Displayクラスをそのまま使うとエラーが発生する
# dd = Display.new
# dd.open
# dd.prints
# dd.close
