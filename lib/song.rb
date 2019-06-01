<<<<<<< HEAD
require "pry"

class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
=======
class Song 
  attr_accessor :name, :artist 
  
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
  def initialize(name) 
    @name = name 
  end
  
<<<<<<< HEAD
  def self.all 
    @@all 
  end
=======
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
  def self.new_by_filename(filename) 
    artist = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = self.new(song_name) 
<<<<<<< HEAD
    song.artist_name = artist
    song
  end 
  def artist_name=(name) 
=======
    song.artist = artist
    song
  end 
  def artist=(name) 
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
    self.artist = Artist.find_or_create_by_name(name) 
    artist.add_song(self)
  end 
end 