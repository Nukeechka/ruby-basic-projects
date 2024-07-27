dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  result = Hash.new(0)
  word.downcase!

  dictionary.each do |substring|
    substring_downcased = substring.downcase
    count = word.scan(substring_downcased).size
    result[substring] = count if count > 0
  end

  result
end
  
p substrings("Howdy partner, sit down! How's it going?", dictionary)

