require "spec_helper"

describe Ingredient do
  describe ".new" do
    it "takes a name, unit, and quantity as arguments" do
      flour = Ingredient.new(5, "cups", "flour")
      expect(flour).to be_a(Ingredient)
    end
  end


  describe "#summary" do
    sugar= Ingredient.new(1, "cup", "sugar")
    it "returns a string of the quantity, unit, and name" do
      expect(sugar.summary).to eq("1 cup sugar")
    end
  end
end
