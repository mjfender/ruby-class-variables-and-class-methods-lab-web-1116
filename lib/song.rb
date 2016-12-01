class Song
  attr_accessor :name, :artist, :genre 

  SONGS = []
  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each do |artist_item|
      artists_hash[artist_item] += 1
    end
    artists_hash
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
      genre_hash[genre] += 1
    end
    genre_hash
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    SONGS << self
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

end 