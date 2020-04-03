class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name) 
    @name = name 
    @artist = self.artist
    @@all << self
  end 

  def self.all
    @@all 
  end 
  
  def artist_name
    if #something 
      #something 
    else 
      self.artist.name
    end 
  end 
  
end 