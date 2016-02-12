require 'imdb'
require 'pry'

class Movie

	def initialize
		@movies = []
	end

	def search_for(term)

		search_result = Imdb::Search.new(term)
		
		movieList = reduce_results(search_result.movies)
		
		shortList = get_movies_with_poster(movieList)
		@movies = shortList.length >= 9 ? shortList.first(9) : shortList

	end

	def reduce_results(moviesArray)
		moviesArray.length > 100 ? moviesArray.first(100) : moviesArray
	end

	def get_movies_with_poster(moviesArray)
		moviesArray.select { |m| m.poster != nil && m.poster != "" }
	end

	def is_year?(year)
		
	end
end