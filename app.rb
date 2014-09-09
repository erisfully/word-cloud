require 'json'
require 'pp'

json = File.read('data/quotes.json')

hashes = JSON.parse(json)

word_array = []
hashes.invert.each do |key, value|
  key.each do |string|
    string.downcase!
   string.split(/ /).each do |word|
     word_array.push(Hash[word,value])
   end
  end
end

word_array.each do |hash|
  key = hash.keys
  value = hash.values
  pp Hash[key, :people => value]
end

