def caesar_cipher(string, number)
  alphabet_lower = ("a".."z").to_a
  alphabet_upper = ("A".."Z").to_a

  cipher_text = ""
  string.each_char do |char|
    if alphabet_lower.include?(char)
      index = (alphabet_lower.index(char) + number.to_i) % 26
      cipher_text << alphabet_lower[index]
    elsif alphabet_upper.include?(char)
      index = (alphabet_upper.index(char) + number.to_i) % 26
      cipher_text << alphabet_upper[index]
    else
      cipher_text << char
    end
  end
  puts cipher_text
end

caesar_cipher("My Name is Alexander", 4)
