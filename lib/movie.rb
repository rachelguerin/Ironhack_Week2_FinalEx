require 'imdb'
require 'pry'

class Movie
	attr_reader :title, :year, :poster, :id
	def initialize(title,year,poster,id)
		@title = title
		@year = year
		@poster = poster
		@id = id
	end	

end

class MovieList
	attr_reader :movieList

	def initialize
		@movieList = []
	end

	def add_movie(movie)
		@movieList << movie
	end

	def clear_movie
		@movieList = []
	end

	def search_for(term)
		search_result = Imdb::Search.new(term)
		
		movieList = reduce_results(search_result.movies)
		
		shortList = get_movies_with_poster(movieList)
		
		shortList.each

		movies = shortList.length >= 9 ? shortList.first(9) : shortList
		
		self.clear_movie
		movies.each do |m|
			self.add_movie(Movie.new(m.title,m.year,m.poster,m.id))
		end	
		@movieList
	end

	def get_random_year
		yearArray = @movieList.map { |m| m.year }
		yearArray.sample 
	end

	def reduce_results(moviesArray)
		moviesArray.length > 100 ? moviesArray.first(100) : moviesArray
	end

	def get_movies_with_poster(moviesArray)
		moviesArray.select { |m| m.poster != nil && m.poster != "" }
	end


end