class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = [] 
  @@genres = []

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

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
    # creating hash with each_with_object
    # @@artists.each_with_object(Hash.new 0) do |artist, hash|
    #   hash[artist] += 1 
    # end  
    # vs creating hash with tally
    @@artists.tally
  end

  def self.genre_count
    # creating hash with each_with_object
    # @@genres.each_with_object(Hash.new 0) do |genre, hash|
    #   hash[genre] += 1 
    # end  
    # vs creating hash with tally
    @@genres.tally  
  end
end