#write your code here

def add num1, num2
	return num1 + num2
end

def subtract num1, num2
	return num1 - num2
end

def sum array
	sum = 0
	array.each do |num|
		sum += num
	end
	return sum
end

def multiply array
	product = array[0]
	index = 1
	while index < array.length
		product *= array[index]
		index += 1
	end
	return product
end

def power base, exponent
	pow = base
	(exponent - 1).times do
		pow *= base
	end
	return pow
end

def factorial num
	if num == 0 or num == 1
		return 1
	end
	product = num
	index = 1
	while index < num
		product *= (num - index)
		index += 1
	end
	return product
end