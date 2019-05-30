require 'pry'
class Artist
@@all = []

attr_reader :name, :songs, :all


def self.all
    @@all
end

def initialize(name)
    @songs = []
    @name = name
    @@all << self
    #binding.pry
end

def new_song(name, genre)
    newSong = Song.new(name, self, genre)
    @songs << newSong
    newSong
end

def genres
    x = []
    self.songs.each {|song| x << song.genre }
    x
end

end