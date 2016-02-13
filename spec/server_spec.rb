require_relative "../server.rb"
require 'rspec'
require 'rack/test'

describe 'Server Service' do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "should load the home page" do
		get '/'
		expect(last_response).to be_ok
	end

	# it "should NOT load the home page" do
	# 	get '/home'
	# 	expect(last_response).to_not be_ok
	# end

	it "should load the quiz page" do
		get '/quiz'
		expect(last_response).to be_ok
	end

	it "should redirect to the /quiz" do
		post '/get_movies'
		expect(last_response.redirect?).to be(true)
		follow_redirect!
		expect(last_request.path).to eq('/quiz')
	end

	it "should show an error - not enough search results" do
		get '/no_results'
		expect(last_response).to be_ok
	end		
end