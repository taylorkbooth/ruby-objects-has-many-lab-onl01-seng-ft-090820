class Author
  
    attr_accessor :name, :posts
  
  
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |post|
      post.author == self
      
    end
  end
  
  def add_post(post)
    post.author = self
  end
  
def add_post_by_title(post_name)
  author = Post.new(post_name)
  add_post(author)
end
 
def self.song_count
  Author.all.count
end

   
  
  
end