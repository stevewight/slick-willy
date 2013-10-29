require 'rubygems'
require 'json'
require './legislator'
require './bill'
require './upcoming_bill'
require './vote'
require './district'
require './committee'

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

  def bills(response)
    parsed = JSON.parse(response)
    parsed['results'].each do |item|
      @list << Bill.new(item)
    end
  end

  def upcoming_bills(response)
    parsed = JSON.parse(response)
    parsed['results'].each do |item|
      @list << UpcomingBill.new(item)
    end
  end

  def votes(response)
    parsed = JSON.parse(response)
    parsed['results'].each do |item|
      @list << Vote.new(item)
    end
  end

  def districts(response)
    parsed = JSON.parse(response)
    parsed['results'].each do |item|
      @list << District.new(item)
    end
  end

  def committees(response)
    parsed = JSON.parse(response)
    parsed['results'].each do |item|
      @list << Committee.new(item)
    end
  end

end
