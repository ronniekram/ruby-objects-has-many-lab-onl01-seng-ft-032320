class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize 
    @name = name 
    @artist = artist 
  end 
  
  def add_song_by_name(song)
    song = Song.new 
    @@all << song 
    song.artist = self 
  end 
end 