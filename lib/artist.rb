class Artist 
  attr_accessor :name 

#when new artist is created, initialize gives it a name and a place to put it's songs  
  def initialize(name) 
    @name = name
    @songs = []
  end 
  
  def add_song(song) 
    @songs << song
    song.artist = self 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song) 
  end

  def self.song_count 
    Song.all.length
  end 
  
end 