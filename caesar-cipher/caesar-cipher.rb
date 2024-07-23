def caesar_cipher(string, shift)

  alphabet_downcase = "abcdefghijklmnopqrstuvwxyz"
  alphabet_upcase = alphabet_downcase.upcase

  string.each_char do |char|
    char_code = char.codepoints.join.to_i
    new_char = char_code.to_i + shift
    if alphabet_downcase.include?(char)
      if new_char > 122
        new_shift = new_char - 122
        new_char = 96 + new_shift
      end
      print new_char.chr
    elsif alphabet_upcase.include?(char)
      if new_char > 90
        new_shift = new_char - 91
        new_char = 65 + new_shift
      end
      print new_char.chr
    else
      print char
    end

  end

  print "\n"

end

caesar_cipher("What a string!", 5)
puts "a".codepoints