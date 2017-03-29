require_relative "printing"

class BakedGood
  include Printing

  attr_reader :name, :recipe
  attr_accessor :amount

 def initialize(name, recipe)
   @name= name
   @recipe= recipe
   @amount=0
 end

 def bake!
   @amount += 1
   @amount
 end


end
