require 'pry'

class Author 
  attr_accessor :name, :posts 
  
  def initialize(name)
    @name = name
    @posts = []
  end   
  
  def posts 
    Post.all
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(post)
    new_post = Post.new(post)
    @posts << new_post
    new_post.author = self
  end 
  
  def self.post_count
    Post.all.count
    #binding.pry
  end   
end 

