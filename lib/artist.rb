class Artist 
  attr_accessor :name
  #attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  #def artist=(name)
  #  @name = name
  #end
  
  def songs 
    Song.all
  end   
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
  end 
  
  def self.song_count
    Song.all.count
  end
end 


=begin solution

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end
end

=end