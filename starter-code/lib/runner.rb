# require 'pry'
# require_relative "../lib/baked_good"
# require_relative "../lib/cookie"
# require_relative "../lib/ingredient"
# require_relative "../lib/pie"
# require_relative "../lib/printing"
# require_relative "../lib/recipe"
#
#
#
# sugar= Ingredient.new(1, "tablespoon", "sugar")
# flour= Ingredient.new(2.5, "cups", "flour")
# water= Ingredient.new(6, "tablespoons", "water")
# butter= Ingredient.new(2, "sticks", "butter")
# salt= Ingredient.new(0.75, "teaspoon", "salt")
# pie_crust_ingredients= [sugar, flour, water, butter, salt]
# pie_crust_instructions=["whisk together sugar, flour, and salt", "cut in butter until it becomes a coarse meal", "gradually add water until dough comes together", "wrap in plastic and chill"]
# crust_name="All Butter Crust"
# crust_recipe = Recipe.new(pie_crust_instructions, pie_crust_ingredients)
#
# more_sugar= Ingredient.new(1, "cup", "sugar")
# cinnamon= Ingredient.new(1, "tablespoon", "cinnamon")
# apples= Ingredient.new(4, "large", "apples")
# pie_filling_ingredients= [more_sugar, cinnamon, apples]
# pie_filling_instructions= ["slice apples", "toss apples with sugar and cinnamon", "place in prepared crust", "cover with second crust", "crimp edges", "bake at 350 for 30 minutes"]
# filling_name= "Apple Pie Filling"
# filling_recipe= Recipe.new(pie_filling_instructions, pie_filling_ingredients)
# apple_pie_filling= BakedGood.new(filling_name, filling_recipe)
# apple_pie_crust= BakedGood.new(crust_name, crust_recipe)
# apple_pie= Pie.new("Apple Pie", apple_pie_crust, apple_pie_filling)
#
# puts apple_pie.bake!
# puts apple_pie.bake!
# puts apple_pie.print_pie_recipe
#
#
# peanutbutter= Ingredient.new(1, "cup", "peanutbutter")
# brown_sugar= Ingredient.new(1, "cup", "brown sugar")
# egg= Ingredient.new(1, "large", "egg")
# cookie_ingredients= [peanutbutter, brown_sugar, egg]
# cookie_instructions= ["Combine the peanut butter, sugar and egg. Mix until smooth.", "Drop spoonfuls of dough onto prepared baking sheet", "bake at 350 for 8 minutes"]
# cookie_name= "Peanut Butter Cookies"
# cookie_recipe= Recipe.new(cookie_name, cookie_instructions, cookie_ingredients)
# peanutbutter_cookies= Cookie.new(cookie_name, cookie_recipe)
#
# puts peanutbutter_cookies.bake!
# puts peanutbutter_cookies.bake!
# puts peanutbutter_cookies.print_recipe
