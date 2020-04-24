require 'pry'
require './Memorable.rb'
require './Findable.rb'
require './Paramable.rb'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  attr_accessor :name
  attr_reader :songs
  def initialize
    super
    @songs = []
  end


  @@artists = []

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
