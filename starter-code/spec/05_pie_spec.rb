require "spec_helper"

describe Pie do
  before :each do
    @sugar= Ingredient.new(1, "tablespoon", "sugar")
    @flour= Ingredient.new(2.5, "cups", "flour")
    @water= Ingredient.new(6, "tablespoons", "water")
    @butter= Ingredient.new(2, "sticks", "butter")
    @salt= Ingredient.new(0.75, "teaspoon", "salt")
    @pie_crust_ingredients= [@sugar, @flour, @water, @butter, @salt]
    @pie_crust_instructions=["whisk together sugar, flour, and salt", "cut in butter until it becomes a coarse meal", "gradually add water until dough comes together", "wrap in plastic and chill"]
    @crust_name="All Butter Crust"
    @crust_recipe = Recipe.new(@pie_crust_instructions, @pie_crust_ingredients)

    @more_sugar= Ingredient.new(1, "cup", "sugar")
    @cinnamon= Ingredient.new(1, "tablespoon", "cinnamon")
    @apples= Ingredient.new(4, "large", "apples")
    @pie_filling_ingredients= [@more_sugar, @cinnamon, @apples]
    @pie_filling_instructions= ["slice apples", "toss apples with sugar and cinnamon", "place in prepared crust", "cover with second crust", "crimp edges", "bake at 350 for 30 minutes"]
    @filling_name= "Apple Pie Filling"
    @filling_recipe= Recipe.new(@pie_filling_instructions, @pie_filling_ingredients)
    @apple_pie_filling= BakedGood.new(@filling_name, @filling_recipe)
    @apple_pie_crust= BakedGood.new(@crust_name, @crust_recipe)
    @apple_pie= Pie.new("Apple Pie", @apple_pie_crust, @apple_pie_filling)
  end

  context "initialize a Pie" do
    it "takes name, crust_recipe, and filling_recipe as arguments" do
      expect(@apple_pie.filling).to be_a(BakedGood)
      expect(@apple_pie.filling.recipe.instructions).to be_a(Array)
      expect(@apple_pie.name).to eq("Apple Pie")
      expect(@apple_pie.amount).to eq(0)
    end
  end

  context "#bake!" do
    it "increases by 3 when we call #bake! three times" do
      @apple_pie.bake!
      @apple_pie.bake!
      @apple_pie.bake!

      expect(@apple_pie.amount).to eq(3)
    end
  end

  context "#print_pie_recipe " do
    it "prints out the pie recipe" do
      expect(@apple_pie.print_pie_recipe).to eq("APPLE PIE\n\nAll Butter Crust \n\nIngredients\n- 1 tablespoon sugar\n- 2.5 cups flour\n- 6 tablespoons water\n- 2 sticks butter\n- 0.75 teaspoon salt\n\nInstructions\n1. whisk together sugar, flour, and salt\n2. cut in butter until it becomes a coarse meal\n3. gradually add water until dough comes together\n4. wrap in plastic and chill\n\nApple Pie Filling \n\nIngredients\n- 1 cup sugar\n- 1 tablespoon cinnamon\n- 4 large apples\n\nInstructions\n1. slice apples\n2. toss apples with sugar and cinnamon\n3. place in prepared crust\n4. cover with second crust\n5. crimp edges\n6. bake at 350 for 30 minutes\n\n")
    end
  end


end
