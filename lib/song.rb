class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(song_file)
    song_artist = song_file.split(" - ")[0]
    song_name = song_file.split(" - ")[1]
    new_song = Song.new(song_name)
    new_artist = Artist.find_or_create_by_name(song_artist)
    new_song.artist = new_artist
    new_artist.add_song(new_song)
    new_song
  end
end
