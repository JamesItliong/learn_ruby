class Book
# write your code here
	attr_reader :title

	def title= name
		@title = ""
		words = name.split(" ")

		(words.size).times do |i|
			if i == 0
				@title += words[i].capitalize
			elsif words[i] == "the" or
				  words[i] == "and" or
				  words[i] == "of" or
				  words[i] == "to" or
				  words[i] == "an" or
				  words[i] == "on" or
				  words[i] == "in" or
				  words[i] == "a"
				@title += words[i]
			else
				@title += words[i].capitalize
			end
			
			

			if i < words.size - 1
				@title += " "
			end
		end
	end
end
