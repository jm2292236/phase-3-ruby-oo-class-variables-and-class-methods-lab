class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_reader :name, :artist, :genre

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre

        # Total of songs created
        @@count += 1

        # Songs by genre
        @@genres << genre

        # Songs by artist
        @@artists << artist
    end

    # Class methods
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        # tally returns a hash with the genre as the key name
        # and the total of songs in that genre as the key value
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end


# TESTS
# ======================================
# lucifer = Song.new("Lucifer", "Jay-Z", "rap")
# ninety_nine = Song.new("99 Problems", "Jay-Z", "rap")
# ninety_nine = Song.new("New York", "Sinatra", "pop")
# hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
# dont_blink = Song.new("Don't Blink", "Kenny Chesney", "country")
# the_way_you_look = Song.new("The Way You Look Tonight", "Sinatra", "pop")
# p "Genres: #{Song.genres}"
# p "Artists: #{Song.artists}"
# puts "Genre count: #{Song.genre_count}"
# puts "Artist count: #{Song.artist_count}"
