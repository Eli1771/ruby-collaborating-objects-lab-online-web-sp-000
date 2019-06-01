class MP3Importer 
  attr_accessor :path, :file, :files
  
  def initialize(filepath)
    @path = filepath 
  end 
  
  def files 
    @files = Dir.glob("#{path}/*.mp3").collect {|file|
      file.gsub("#{path}/", "")
    }
  end 
<<<<<<< HEAD
  def import
    files.each do |f|
      new_song = Song.new_by_filename(f)
=======
  def import(files)
    files.each do |f|
      Song.new_by_filename(f)
>>>>>>> fc2f4ccd1adab6ac8ee9f1e4651662f7f0167bf7
    end 
  end 
end 