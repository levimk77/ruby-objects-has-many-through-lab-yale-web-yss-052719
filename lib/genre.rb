require 'pry'
class Genre
    @@all = []
    attr_reader :name
    def initialize(name)
        @@all << self
        @name = name
        @songs = []
    end

    def addSong(song)
        @songs << song
    end
    def songs
        @songs
    end
    
    def self.all
        @@all
    end

    def artists
        x = []
        self.songs.each { |song| x << song.artist } 
        x
    end
end