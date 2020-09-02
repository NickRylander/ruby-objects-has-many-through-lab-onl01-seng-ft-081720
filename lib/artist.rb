# Artist
#   #name
#     has a name (FAILED - 1)
#   .all
#     knows about all artist instances (FAILED - 2)
#   #songs
#     returns all songs associated with this Artist (FAILED - 3)
#   #new_song
#     given a name and genre, creates a new song associated with that artist (FAILED - 4)
#   #genres
#     has many genres, through songs (FAILED - 5)

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
    def songs
       Song.all.select {|song| song.artist == self}
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    def genres
        songs.map(&:genre)
      end
end