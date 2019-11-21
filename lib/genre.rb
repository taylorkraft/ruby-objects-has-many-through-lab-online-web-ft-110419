class Genre
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    self.name = name
  end

  def songs
   return Song.all.filter do |song|
     song.genre == self
   end
  end

  def self.all
    @@all 
  end

  def artists
    self.songs.collect do |artist|
      artist.song 
    end
  end
end
