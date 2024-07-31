# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(word, dictionary)
  # Step 1: Convert the word to lowercase
  word_downcase = word.downcase
  
  # Step 2: Initialize an empty hash to store the substring counts
  substring_count = Hash.new(0)
  
  dictionary.each do |substring|
    # Step 4: For each substring, count how many times it appears in the word
    substring_downcase = substring.downcase
    matches = word_downcase.scan(substring_downcase).size
    
    # Step 5: Store the count in the hash if the count is greater than zero
    substring_count[substring_downcase] = matches if matches > 0
  end
  
  # Step 6: Return the hash
  substring_count
end

# Example usage
word = "Below the Belt, below the knee"
dictionary = ["below", "be", "low", "belt", "knee", "the"]

puts substrings(word, dictionary)