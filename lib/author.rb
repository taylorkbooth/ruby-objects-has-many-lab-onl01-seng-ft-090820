class Author
  
    attr_accessor :name
  
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Post.all.select do |song|
      song.artist == self
      
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
 def add_song_by_name(song_name)
   singer = Post.new(song_name)
   add_song(singer)
 end
 
 def self.song_count
   Post.all.count
end

   
  
  
end