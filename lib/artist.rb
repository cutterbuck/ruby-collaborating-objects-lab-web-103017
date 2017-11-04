require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect{|instance| instance.name == name}
      @@all.detect{|instance| instance.name == name}
    else @@all.detect{|instance| instance.name == name} == false
      new_instance = Artist.new(name)
      new_instance.save
      new_instance
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
