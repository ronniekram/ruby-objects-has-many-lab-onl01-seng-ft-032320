class Song 
  attr_accessor :artist, :name 
  @@all = []
  
  #when creating a new song, it adds itself to the class variable of an array 
  def initialize(name)
    @name = name
    @@all << self 
  end 
 
   #returns the array of the class variable 
  def self.all 
    @@all 
  end 
  
  # the name of the artist is self.artist.name
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end 
  
end 