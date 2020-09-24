class Author
  
    attr_accessor :name, :posts
  
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Post.all.select do |post|
      post.author == self
      
    end
  end
  
#   def add_title(title)
#     song.artist = self
#   end
  
# def add_song_by_name(song_name)
#   singer = Post.new(song_name)
#   add_song(singer)
# end
 
# def self.song_count
#   Post.all.count
# end

   
  
  
end