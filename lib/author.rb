class Author
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(title)
    @posts << title
    title.author = self 
  end 
  
  def posts
    Post.all.select {|entry| entry.author == self}
  end
  
  def add_post_by_title(title)
    entry = Post.new(title)
    add_post(entry)
  end 
  
  def self.post_count
    Post.all.length
  end 
  
end 