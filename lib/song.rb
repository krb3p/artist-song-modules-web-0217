require 'pry'
require_relative './memorable_module.rb'
require_relative './params_module.rb'
require_relative './finder_module.rb'

class Song

  include Memorable::InstanceMethods
  include Params::InstanceMethods
  extend Memorable::ClassMethods
  extend Finder::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super

  end

  def artist=(artist)
    @artist = artist unless @artist
  end

  def self.all
    @@songs
  end
end
