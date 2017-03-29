require_relative "printing"

class Pie
  include Printing

  attr_reader :name, :crust, :filling
  attr_accessor :amount

  def initialize(name, crust, filling)
    @name= name
    @crust= crust
    @filling= filling
    @amount=0
  end

  def print_pie_recipe
    @pie= [@crust, @filling]
    output= "#{@name.upcase}\n"
    
    @pie.each do |pie_part|
      output += "#{print_recipe(pie_part)}\n"
    end
    output
  end

  def bake!
    @amount += 1
    "We have #{@amount} pie(s), fresh out of the oven!"
  end

end
