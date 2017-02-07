#write your code here

def echo string
	string
end

def shout string
	string.upcase
end

# This method uses the technique called default values
# If the number variable below is not given a value, it uses the default one which is 2
def repeat string, number=2
	repeated = ""
	cur_index = 0

	number.times do
		repeated += string

		if cur_index != number - 1
			repeated += " "
		end

		cur_index += 1
	end

	repeated
end

def start_of_word string, number
	string[0..number-1]
end

def first_word string
	words = string.split(" ")
	words[0]
end

def titleize string
	words = string.split(" ")

	(words.length).times do |i|
		if i == 0
			words[i].capitalize!
		elsif words[i] == "and" or 
			words[i] == "or" or 
			words[i] == "the" or
			words[i] == "over"
			next
		else
			words[i].capitalize!
		end
	end

	title = ""

	(words.length).times do |i|
		title += words[i]

		if i != words.length - 1
			title += " "
		end
	end

	title
end