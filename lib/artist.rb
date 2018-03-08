class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find || self.create_by_name
  end

  def self.find(name)
    self.all.find {|name| artist.name == name}
  end

  def self.create_by_name(name)
    self.new(name).tap {|artist| artist.save}
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
