class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(name)
        Artist.new(name)
    end

    def songs
        @songs
    end

    def add_song(song)
        if song.artist == nil
          song.artist = self
        else
          nil
        end
        if @songs.include?(song)
          nil
        else
          @songs << song
        end
        song
    end    
end