LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
           "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

def caesar_cipher(string, number)
  splitted_string = string.upcase.split("")
  new_string = ""
  splitted_string.each do |char|
    index = LETTERS.index(char) + number.to_i
    if index > LETTERS.length - 1
      index = index - LETTERS.length
    end

    new_string << LETTERS[new_index]
  end

  puts new_string
end
