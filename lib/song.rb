class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
    new_song.artist = artist
    new_song.save
  end

  def save
    @@all << self
    self
  end

end
