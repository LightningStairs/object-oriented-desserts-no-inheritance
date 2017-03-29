require "spec_helper"

describe Recipe do
  describe ".new" do
    it "takes name, instructions, and ingredients as arguments" do
      sugar= Ingredient.new(1, "tablespoon", "sugar")
      flour= Ingredient.new(2.5, "cups", "flour")
      water= Ingredient.new(6, "tablespoons", "water")
      butter= Ingredient.new(2, "sticks", "butter")
      salt= Ingredient.new(0.75, "teaspoon", "salt")

      pie_crust_ingredients= [sugar, flour, water, butter, salt]
      pie_crust_instructions=["whisk together sugar, flour, and salt", "cut in butter until it becomes a coarse meal", "gradually add water until dough comes together", "wrap in plastic and chill"]
      name="All Butter Crust"


      crust_recipe = Recipe.new(name, pie_crust_instructions, pie_crust_ingredients)

      expect(crust_recipe.ingredients).to include(water)
      expect(crust_recipe.instructions).to include("wrap in plastic and chill")
      expect(crust_recipe.name).to eq("All Butter Crust")
    end
  end
end
