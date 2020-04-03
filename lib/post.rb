class Post 
  attr_accessor :name, :author
  @@all = []
  
  def initialize(name)
    @name = name 
    @author = author 
    save
  end 
  
  def save
    @@all << self
  end 
end 