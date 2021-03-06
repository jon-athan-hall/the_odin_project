def caesar_cipher(message, shift_factor)
  chars = message.chars # Make an array of all characters.

  chars.map! do |c|
    ascii_code = c.ord # Turn character into ascii.

    # Only shift the letters a-z and A-Z.
    if ascii_code.between? 65, 90
      ascii_code = (ascii_code + shift_factor - 64) % 26 + 64
    elsif ascii_code.between? 97, 122
      ascii_code = (ascii_code + shift_factor - 96) % 26 + 96
    end

    ascii_code.chr # Turn ascii back into character.
  end

  chars.join # Mush the array back into a single string.
end

puts caesar_cipher("What a string!", 5)
