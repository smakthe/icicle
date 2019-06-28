require 'pry'
dictionary_list = []

def convert(input)
	results = []
	dictionary_hash.each do |word, number|
		if input.match(number.gsub("\n", ""))
			results << word
		end
	end
	binding.pry
	p ""
end

File.open("dictionary.txt", "r") do |f|
	f.each do |i|
		dictionary_list << i
	end
end

dictionary_hash = {}
dictionary_list.each do |letter|
	dictionary_hash[letter] = letter.gsub(/(A|B|C)/, "2")
																	.gsub(/(D|E|F)/, "3")
																	.gsub(/(G|H|I)/, "4")
																	.gsub(/(J|K|L)/, "5")
																	.gsub(/(M|N|O)/, "6")
																	.gsub(/(P|Q|R|S)/, "7")
																	.gsub(/(T|U|V)/, "8")										 
																	.gsub(/(W|X|Y|Z)/, "9")
end
dictionary_hash.each do |word, number|
	if word.length < 4 || word.length == 9 || word.length == 10 || word.length > 11 
		dictionary_hash.delete(word)
	end
end
print "Enter the number: "
input = gets.to_s
convert(input)