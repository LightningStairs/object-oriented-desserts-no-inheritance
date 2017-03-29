require_relative "printing"

class Cookie
  include Printing

  attr_reader :name, :recipe
  attr_accessor :amount

 def initialize(name, recipe)
   @name= name
   @recipe= recipe
   @amount=0
 end

  def bake!
    @amount += 12
    "We have #{@amount} cookies, fresh out of the oven!"
  end
end
