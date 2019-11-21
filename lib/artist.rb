class Artist 
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    self.name = name
    @@all << self 
  end

  def self.all
    @@all 
  end 

  def songs
    return Song.all.filter do |song|
      song.artist == self 
    end
  end

  def new_song(name, genre)
    return Song.new(name, self, genre)
  end

  def genres
    self.songs.collect do |song|
      song.genre 
    end
  end
end