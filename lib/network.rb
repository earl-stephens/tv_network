require 'pry'

class Network
  attr_reader :name,
              :shows

  def initialize(name_arg)
    @name = name_arg
    @shows = []
  end

  def add_show(show_arg)
    @shows << show_arg
  end

  def highest_paid_actor
    temp_array = []
    @shows.each do |show|
      temp_array << show.characters
    end
    temp3 = temp_array.flatten.sort_by do |character|
      character.salary
    end
    highest_paid = temp3[-1].actor
    return highest_paid
  end

  def payroll
    payroll_hash = {}
    temp_array = []
    @shows.each do |show|
      temp_array << show.characters
    end
      temp_array.flatten.each do |character|
      payroll_hash[character.actor] = character.salary
    end
    return payroll_hash
  end

end
