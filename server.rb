require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require_relative './lib/movie.rb'
#require_relative './lib/movieSearcherFake.rb'
require 'imdb'

# @movies = Imdb::Movie('34323') || MovieSearcherFake.new()
# myMovieList = MovieSearcherFake.new
myMovieList = MovieList.new

get '/' do
	erb(:search)
end

get '/quiz' do
binding.pry
	@movies = myMovieList.movieList
	@year = myMovieList.get_random_year
	erb(:quiz)
end

post '/get_movies' do
	
	myMovieList.search_for(params[:search_term])
	
	
	redirect('/quiz')
end