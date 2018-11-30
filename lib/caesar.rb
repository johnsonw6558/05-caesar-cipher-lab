def caesar_encode(string, offset)
  alphabet = [*("a".."z")]
  letters = string.split("")
  letters.map do |letter|
        if alphabet.include?(letter)
          offest_letter = alphabet.index(letter) + offset
          alphabet[offest_letter % 26]
        elsif alphabet.include?(letter.downcase)
            offest_letter = alphabet.index(letter.downcase) + offset
            alphabet[offest_letter % 26].upcase
        else
          letter
        end
  end.join
end

def caesar_decode(string, offset)
  alphabet = [*("a".."z")]
  letters = string.split("")
  letters.map do |letter|
        if alphabet.include?(letter)
          offest_letter = alphabet.index(letter) - offset
          alphabet[offest_letter % 26]
        elsif alphabet.include?(letter.downcase)
            offest_letter = alphabet.index(letter.downcase) - offset
            alphabet[offest_letter % 26].upcase
        else
          letter
        end
  end.join
end
