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
  
  def artist_name
    self.artist.name
  end 
  
  def self.song_count
    @@all.length
  end 
end 