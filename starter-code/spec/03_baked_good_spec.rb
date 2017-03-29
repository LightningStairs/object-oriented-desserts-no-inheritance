require "spec_helper"

describe BakedGood do
  before :each do
    @chocolate= Ingredient.new(1, "pound", "chocolate")
    @cashews= Ingredient.new(0.25, "cups", "cashews")
    @dried_raspberries= Ingredient.new(0.25, "cups", "dried raspberries")
    @chocolate_bark_ingredients= [@chocolate, @cashews, @dried_raspberries]
    @chocolate_bark_instructions= ["melt chocolate", "pour into tart pan", "top with cashews and raspberries", "chill", "break apart and serve"]
    @name= "Chocolate Bark"
    @recipe= Recipe.new(@chocolate_bark_instructions, @chocolate_bark_ingredients)
    @chocolate_bark= BakedGood.new(@name, @recipe)
  end

  context "initialize a BakedGood" do
    it "takes name and recipe as arguments" do
      expect(@chocolate_bark.recipe).to be_a(Recipe)
      expect(@chocolate_bark.name).to eq("Chocolate Bark")
      expect(@chocolate_bark.recipe.ingredients[0].summary).to eq("1 pound chocolate")
    end

    it "initializes with an amount of 0" do
      expect(@chocolate_bark.amount).to eq(0)
    end
  end

  context "#amount" do
    it "increases by 2 when we call #bake! twice" do
      @chocolate_bark.bake!
      @chocolate_bark.bake!

      expect(@chocolate_bark.amount).to eq(2)
    end
  end
end
