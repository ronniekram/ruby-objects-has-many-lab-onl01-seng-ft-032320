class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(title) 
    @title = title 
    save
  end 
  
  def save
    @@all << self
  end

  def self.all
    @@all 
  end 
  
  def artist_name
    if self.artist == nil 
      nil 
    else 
      self.artist.name
    end 
  end 
  
end 