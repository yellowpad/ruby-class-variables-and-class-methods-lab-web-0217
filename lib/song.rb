class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres  = []
  @@count  = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count += 1
  end


  def self.count
    @@count
  end


  def self.genres
    @@genres.uniq
  end


  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    
    #words = %w(@@artists)

    counts = Hash.new 0

    @@artists.each do |word|
      counts[word] += 1
    end
    return counts
  end

  def self.genre_count

    counts = Hash.new 0

    @@genres.each do |word|
      counts[word] += 1
    end
    return counts
  end

end

#binding.pry