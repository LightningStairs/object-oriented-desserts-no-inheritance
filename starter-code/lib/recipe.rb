require_relative 'ingredient'
class Recipe
  attr_reader :name, :instructions, :ingredients

  def initialize(name=nil, instructions, ingredients)
    @name= name
    @instructions = instructions
    @ingredients = ingredients
  end
end
