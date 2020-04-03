class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end 
  
  def songs 
    Song.all.collect {|songs| songs.artist_name == self}
  end 
  
  def add_song(song)
    song = Song.new 
    
  end 
  
  def add_song_by_name 
  end
  
  def self.song_count 
    self.songs.length
  end 
end 