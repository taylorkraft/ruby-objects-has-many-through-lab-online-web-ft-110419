class Genre 
  attr_accessor :name

  def initialize(name)
    self.name = name 
  end 

  def songs 
   return Song.all.filter do |song|
     song.genre == self
   end
  end 

  
  
  
  
  
  
  
end