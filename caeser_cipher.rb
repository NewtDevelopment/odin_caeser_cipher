require 'pry-byebug'

def caesar_cipher(input_string, shift_factor)
  new_string = ''
  
  input_string.each_byte do |c|
    isLetter = false
    if (c >= 65 && c <= 90 )
      c = (c+shift_factor)
      if(c > 90)
        c = c-26
      end
      new_string += c.chr
      isLetter = true
    end
    if (c >= 97 && c <= 122 )
      c = (c+shift_factor)
      if(c > 122)
        c = c-26
      end
      new_string += c.chr
      isLetter = true
    end
    if !isLetter
      new_string += c.chr
    end
  end
  return new_string
end

puts caesar_cipher("Hello ther person this is a caeser cipher@@$%%(*&^AaaaAA!!!!!", 5)
puts caesar_cipher("What a string!", 5)