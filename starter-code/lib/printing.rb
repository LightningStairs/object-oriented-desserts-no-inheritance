module Printing

  def print_recipe
    output = "#{@name} \n\nIngredients\n"

    @recipe.ingredients.each do |ingredient|
      output += "- #{ingredient.summary}\n"
    end

    output += "\nInstructions\n"

    @recipe.instructions.each_with_index do |instruction, index|
      output += "#{index + 1}. #{instruction}\n"
    end

    output
  end
end
