# Song
#   #new
#     initializes with a name, an artist, and a genre (FAILED - 6)
#   .all
#     knows about all song instances (FAILED - 7)
#   #genre
#     belongs to a genre (FAILED - 8)
#   #artist
#     belongs to a artist (FAILED - 9)

class Song

    attr_accessor :name, :artist, :genre
    @@all = []
        def initialize(name, artist, genre)
            @name = name
            @artist = artist
            @genre = genre
            @@all << self
        end
        def self.all
            @@all
        end
end