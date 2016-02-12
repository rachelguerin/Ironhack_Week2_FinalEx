require_relative "../lib/movie.rb"
require_relative "../lib/movieSearcherFake.rb"
require 'rspec'


describe "Movie Search" do


	before :each do 
		@movie = MovieList.new
	end

	# it "searches over IMDB and returns an array of matches" do
	# 	expect(@movie.search_for("Funny")).to_not be(nil)
	# end

	it "returns array of no more than 9 results" do
		expect(@movie.search_for("Funny").length).to be <= 9
	end


end