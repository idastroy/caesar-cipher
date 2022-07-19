def caesar_cipher(string, shift_factor)   
  ciphertext = ""
  ascii_value = 0

  string.each_char do |character|
    ascii_value = character.ord
    
    if ascii_value.between?(65, 90) || ascii_value.between?(97, 122)
      new_ascii = ascii_value + shift_factor

      if new_ascii.between?(91, 96) || new_ascii > 122
        new_ascii -= 26
      end
    ciphertext += new_ascii.chr
    
    else 
      ciphertext += ascii_value.chr
    end
  end
  
  ciphertext
end

puts caesar_cipher("What a string!", 5)
