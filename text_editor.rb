class TextEditor
  def initialize
    @text = []
    greet

    if new_or_load == "N"
      run
    else
      # load file into memory
      run
    end
  end

  private

  def greet
    greeting = %q(
     _____  _     _____    _____ _______   _______ 
    /  __ \| |   |_   _|  |_   _|  ___\ \ / /_   _|
    | /  \/| |     | |      | | | |__  \ V /  | |  
    | |    | |     | |      | | |  __| /   \  | |  
    | \__/\| |_____| |_     | | | |___/ /^\ \ | |  
     \____/\_____/\___/     \_/ \____/\/   \/ \_/ 
    )

    puts greeting
    puts
  end

  def new_or_load
    input = nil
    until input == "N" || input == "L"
      puts "Would you like to start a (N)ew file or (L)oad an existing file?"
      input = gets.chomp.upcase
    end

    input
  end

  def run
    puts
    puts 'Type "quit" to stop entering text.'
    puts

    loop do
      line = gets.chomp
      break if line == "quit"
      @text << line
    end

    print
    prompt_edit
  end

  def print
    puts
    puts "You wrote:"
    @text.each_with_index {|sentence, line| puts "#{line+1} #{sentence}"}
    puts
  end

  def prompt_edit
    puts "Would you like to edit a line? (Y/N)"
    puts
    response = gets.chomp.upcase

    if response = "Y"
      line = nil
      until (1..@text.length).include? line
        puts
        puts "Which line would you like to edit?"
        line = gets.chomp.to_i
      end

      edit(line)
    end
  end

  def edit(line)
    puts
    puts "Was:"
    puts @text[line-1]
    puts

    puts "Enter new text:"
    @text[line-1] = gets.chomp
    puts

    print
  end

  def save
  end

  def load
  end
end

TextEditor.new