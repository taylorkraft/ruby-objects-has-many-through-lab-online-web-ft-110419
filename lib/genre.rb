class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
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
    self.songs.collect do |song|
      song.artist
    end
  end
end
