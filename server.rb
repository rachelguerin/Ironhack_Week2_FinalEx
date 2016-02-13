require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require_relative './lib/movie.rb'
require_relative './lib/movieSearcherFake.rb'
require 'imdb'

# @movies = Imdb::Movie('34323') || MovieSearcherFake.new()
fakeList = MovieSearcherFake.new
myMovieList = MovieList.new

get '/' do
	erb(:search)
end

get '/err/:err' do
	@err = params[:err]
	erb(:search)
end

get '/quiz' do
	@movies = myMovieList.movieList
	@year = myMovieList.get_random_year
	@director = myMovieList.get_random_director
	erb(:quiz)
end

post '/get_movies' do
	#myMovieList.search_for(params[:search_term])
	myMovieList.set_movie_list(fakeList.movieArray)
	if myMovieList.insufficient_results	
		redirect('/err/no_results')
	else
		redirect('/quiz')
	end
end