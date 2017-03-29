require "spec_helper"

describe Cookie do
  before :each do
    @peanutbutter= Ingredient.new(1, "cup", "peanutbutter")
    @sugar= Ingredient.new(1, "cup", "sugar")
    @egg= Ingredient.new(1, "large", "egg")
    @ingredients= [@peanutbutter, @sugar, @egg]
    @instructions= ["Combine the peanut butter, sugar and egg. Mix until smooth.", "Drop spoonfuls of dough onto prepared baking sheet", "bake at 350 for 8 minutes"]
    @name= "Peanut Butter Cookies"
    @recipe= Recipe.new(@name, @instructions, @ingredients)
    @peanutbutter_cookies= Cookie.new(@name, @recipe)
  end

  context "initialize a Cookie" do
    it "takes name and recipe as arguments" do

      expect(@peanutbutter_cookies.recipe).to be_a(Recipe)
      expect(@peanutbutter_cookies.amount).to eq(0)
    end
  end

  context "#bake" do
    it "increases amount to 12" do
      @peanutbutter_cookies.bake!

      expect(@peanutbutter_cookies.amount).to eq(12)
    end
  end

  context "#print_recipe " do
    it "prints out the recipe" do

      expect(@peanutbutter_cookies.print_recipe).to eq("Peanut Butter Cookies \n\nIngredients\n- 1 cup peanutbutter\n- 1 cup sugar\n- 1 large egg\n\nInstructions\n1. Combine the peanut butter, sugar and egg. Mix until smooth.\n2. Drop spoonfuls of dough onto prepared baking sheet\n3. bake at 350 for 8 minutes\n")
    end
  end



end
