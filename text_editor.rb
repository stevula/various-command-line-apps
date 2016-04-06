class TextEditor
  def initialize
    greet
    if new_or_load == "N"
      run
    else
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
  end
end

TextEditor.new