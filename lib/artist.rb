class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(songname)
    newsong = Song.new(song)
    newsong.artist = self
    add_song(song)
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end


end
