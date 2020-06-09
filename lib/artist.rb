class Artist
  
  attr_accessor :name, :songs 
  
  def initialize(name)
         @name = name
       end
       
      
  def songs
    Song.all.select do |song| song.artist == self
                    end
    end
  
  def add_song(song)
    song.artist = self 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    
  end
    
  
end