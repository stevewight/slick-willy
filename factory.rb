require 'rubygems'
require 'json'
require './legislator'

class Factory
  attr_accessor :list

  def initialize()
    @list = []
  end

  def legislators(response)
    parsed = JSON.parse(response)
    parsed['results'].each do |item|
      @list << Legislator.new(item)     
    end
  end

end
