class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author = self}
    
  end
  
  def add_post(post)
    post.author = self
  end
    
  def add_post_by_title(post)
    post = Post.new(title) 
    
     def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end
  
end