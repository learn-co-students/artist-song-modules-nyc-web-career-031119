require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@all = []

  # def initialize
  #   self.class.all << self
  # end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end
end
