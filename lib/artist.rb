<<<<<<< HEAD
require "pry" 

=======
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
  end 
  def save
    @@all << self 
<<<<<<< HEAD
    nil
=======
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
  end 
  def self.all 
    @@all 
  end 
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    if self.all.any? { |artist| artist.name == name }
        self.all.find { |artist| artist.name == name }
    else 
      self.new(name).tap {|a| a.save}
=======
    self.all.each do |artist| 
      if artist.name == name 
        artist 
      else 
        new_artist = self.new(name) 
        new_artist.save
        new_artist
      end 
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
    end 
  end 
  def print_songs 
    @songs.each do |s|
      puts s.name 
    end 
  end 
end 