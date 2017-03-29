class Ingredient
  attr_reader :quantity, :unit, :name

  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end
