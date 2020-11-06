class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists =[]
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
        artist_songs = {}
        @@artists.each do |artist|
            if artist_songs[artist]
                artist_songs[artist] += 1
            else
                artist_songs[artist] = 1
            end
        end
        artist_songs
    end

    def self.genre_count
        song_genres = {}
        @@genres.each do |genre|
            if song_genres[genre]
                song_genres[genre] += 1
            else
                song_genres[genre] = 1
            end
        end
        song_genres
    end

end