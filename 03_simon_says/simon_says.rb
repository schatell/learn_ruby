#write your code here
def echo(x)
	x
end

def shout(y)
	y.upcase
end

def repeat(string, time=2)
	word = string + " "
	result = (word * time).strip
	return result
end

def start_of_word(word,z)
	return word[0, z]
end

def first_word (phrase)
	phrase = phrase.split
	phrase [0]
end

def titleize(title)
  array = title.split(" ")
  little_words = ['the','and','is','a','an','over','in','on','of','or']

  array.each do |word|
    if ((little_words).include?(word))
      word.downcase
    else
      word.capitalize!
    end
  end
  array[0].capitalize!

  array.each do |word|
    result += word + " "
  end

  return result.strip
end