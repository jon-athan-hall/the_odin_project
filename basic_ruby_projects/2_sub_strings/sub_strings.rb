def substrings(words, dictionary)
  all_words = words.split(" ") # Split string into an array of all words.

  # Reduce the dictionary starting with an empty hash for the accumulator.
  dictionary.reduce({}) do |accumulator, sub_word|
    sub_count = 0 # The substring occurs zero times to start.

    # Go through each word and scan it for the substring. Add to sub_count
    # along the way. The scan method returns an array of indexes for each
    # occurrence, but only the size of that array is needed.
    all_words.each { |w| sub_count = sub_count + w.downcase.scan(sub_word.downcase).count }

    # Don't add a key/value the accumulator hash if the count is 0.
    if sub_count > 0
      accumulator.merge({ sub_word => sub_count })
    else
      accumulator
    end
  end
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
