require "byebug"
class Songs
	Song = Struct.new(:title, :genre, :duration, :singer)

	attr_accessor :songs

	def initialize
		@songs = []
	end

	def add(params)
		@songs << Song.new(params[:title], params[:genre], params[:duration], params[:singer]) 
	end

	def search(field, params)
		selected_songs = songs.select { |song| song.genre == params[:genre]}
		#p "v1 : #{ [songs.first.send(field), params[:genre], params[:duration]] }"
		#p selected_songs.size
		selected_songs.each { |song| p "v1: #{song.title}" }
	end

	def search_v2(field, genre: nil, **)
		# selected_songs = songs.select { |song| }
		p "v2 : #{ [field, genre] }"
		# puts field.to_s
	end
end

song_list = Songs.new
song_list.add({ title: "Over the rainbow", genre: "pop", duration: 180, singer: "unknown"})
byebug

p song_list

song_list.songs.each { |song| p song.title }

song_list.search(:title,  genre: "pop" )
song_list.search_v2(:title,  genre: "pop" )