require_relative "../lib/movie.rb"
require_relative "../lib/movieSearcherFake.rb"
require 'rspec'


describe "Movie Search" do


	before :each do 
		@movie = MovieList.new
		@fakeList = MovieSearcherFake.new
	end

	# it "searches over IMDB and returns an array of matches" do
	# 	expect(@movie.search_for("Funny")).to_not be(nil)
	# end

	it "returns array of no more than 9 results" do
		@movie.set_movie_list(@fakeList.movieArray)
		expect(@movie.movieList.length).to be <= 9
	end

	it "returns an empty array if there are not enough search results" do
		@movie.set_movie_list([])
		expect(@movie.movieList.length).to eq(0)
	end

	it "returns true if there are no results to display" do
		@movie.set_movie_list([])
		expect(@movie.insufficient_results).to be(true)
	end

	it "returns true if there is 1 result" do
		@movie.set_movie_list([{ 
				title: "Funny (2016)", 
				poster: "http://ia.media-imdb.com/images/M/MV5BMTYwMDY3NTE2OV5BMl5BanBnXkFtZTgwMjI1NjM4MzE@.jpg",
				year: 2016,
				id: "3382466",
				director: "Woody Allen"
			}])
		expect(@movie.insufficient_results).to be(true)
	end

	it "returns false if there are enough results to display" do
		@movie.set_movie_list(@fakeList.movieArray)
		expect(@movie.insufficient_results).to be(false)
	end
end