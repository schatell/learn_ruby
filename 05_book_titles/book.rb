class Book
	attr_reader :title

	def title=(booktitle)

		nocaps = ["but", "and", "in", "the", "of", "a", "an"]

		arr = booktitle.split(" ")
		arr.map! {|i| (nocaps.include? i) ? i : i.capitalize }
		arr[0].capitalize!
		@title = arr.join(" ")
	end
end
