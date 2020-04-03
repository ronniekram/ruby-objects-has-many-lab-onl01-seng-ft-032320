class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def posts
    Post.all.select {|p| p.name == self}
  end 
  
  def add_post(title)
  end 
  
  def add_post_by_name(title)
    title = Post.new(title)
    add_post(title)
  end 
  
  def self.post_count
    Post.all.length 
  end 
end 