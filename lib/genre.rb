# Genre
#   #name
#     has a name (FAILED - 10)
#   #songs
#     has many songs (FAILED - 11)
#   .all
#     knows about all genre instances (FAILED - 12)
#   #artists
#     has many artists, through songs (FAILED - 13)

class Genre

    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all { |song| song.genre == self }
      end
    
      def artists
        songs.map(&:artist)
      end
    
      def add_song(song)
        songs << song
      end
    end