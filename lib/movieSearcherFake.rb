class MovieSearcherFake
	attr_reader :movieArray
	def initialize
		@movieArray = [{ 
	title: "Funny (2016)", 
	poster: "http://ia.media-imdb.com/images/M/MV5BMTYwMDY3NTE2OV5BMl5BanBnXkFtZTgwMjI1NjM4MzE@.jpg",
	year: 2016,
	id: 3382466
},
{ title: "Funny Girl (Una chica divertida) (1968)",
	poster: "http://ia.media-imdb.com/images/M/MV5BMTcwMTMyMDA3N15BMl5BanBnXkFtZTcwODUzMjk3OA@@.jpg",
	year: 1968,
	id: 3382466
},
{ title: "Funny Lady (1975)",
	poster: "http://ia.media-imdb.com/images/M/MV5BMjE1MjM3MjU4N15BMl5BanBnXkFtZTcwODk5NjcyMQ@@.jpg",
	year: 1975,
	id: 3382466
},
{ title: "Funny Games (2007)",
	poster: "http://ia.media-imdb.com/images/M/MV5BMTg4OTExNTYzMV5BMl5BanBnXkFtZTcwOTg1MDU1MQ@@.jpg",
	year: 2007,
	id: 3382466
},
{ title: "Funny Bunny",
	poster: "http://ia.media-imdb.com/images/M/MV5BMTUxMjE2MTI0MV5BMl5BanBnXkFtZTgwNjU1NDQ2NzE@.jpg",
	year: 2015,
	id: 0472954
},
{ title: "This Isn't Funny",
	poster: "http://ia.media-imdb.com/images/M/MV5BMjIxMTk0NDkzMF5BMl5BanBnXkFtZTgwNzg2NDgwNzE@.jpg",
	year: 2015,
	id: 0062994
},
{ title: "Not That Funny",
	poster: "http://ia.media-imdb.com/images/M/MV5BMTQ4OTIwNDM2OF5BMl5BanBnXkFtZTgwMDIyMzI0MjE@.jpg",
	year: 2012,
	id: 0073026
},
{ title: "Funny Ha Ha (2002)",
	poster: "http://ia.media-imdb.com/images/M/MV5BMjE1OTU5MjI1NF5BMl5BanBnXkFtZTcwNjkwMzgyMQ@@.jpg",
	year: 2002,
	id: 0062994
},
{ title: "Funny Money",
	poster: "http://ia.media-imdb.com/images/M/MV5BMTI3MjMyNDQ4N15BMl5BanBnXkFtZTcwNTIwODQ0MQ@@.jpg",
	year: 2006,
	id: 0073026 
}]
	end

	def search_for(term)
		@movieArray
	end
end
