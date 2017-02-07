#write your code here

def translate string
	translated = ""
	words = string.split(" ")

	(words.length).times do |i|
		if words[i] == words[i].capitalize
			translated += pig_latin(words[i].downcase).capitalize
		else
			translated += pig_latin(words[i].downcase)
		end

		if i < words.length - 1
			translated += " "
		end
	end

	translated
end

def pig_latin string
	newstr = string
	suffix = "ay"
	vowels = ["a", "e", "i", "o", "u"]

	# IF STRING BEGINS WITH A VOWEL
	if vowels.include? string[0]
		newstr += suffix
	# IF STRING BEGINS WITH A CONSONANT
	else
		index = 0
		prefix = ""

		while true
			if !vowels.include? newstr[index]
				prefix += newstr[index]
				index += 1
			else
				if newstr[index] == 'u' or newstr[index] == 'U'
					prefix += newstr[index]
					index += 1
				else
					break
				end
			end
		end

		newstr = newstr[index..(newstr.length-1)] + prefix + suffix
	end

	newstr
end