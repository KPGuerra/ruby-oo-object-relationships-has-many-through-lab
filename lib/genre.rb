class Genre
    attr_accessor :name
    @@genre_list = []

    def initialize (name)
        @name = name
        @@genre_list << self
    end 

    def self.all
        @@genre_list
    end 

    def songs
        Song.all.find_all {|song| song.genre == self}
    end

    def artists
        songs.collect do |song|
            if song.genre == self
                song.artist
            end 
        end 
    end 
end 