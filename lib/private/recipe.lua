nuclear.recipe = {}

-- @ recipe: Recipe
-- return Table<Ingredient> or nil
function nuclear.recipe.getIngredients(recipe)
  if recipe ~= nil then
    if recipe.normal ~= nil then
      return recipe.normal.ingredients
    else
      return recipe.ingredients
    end
  end
  return nil
end

-- @ recipes: Table>String>
function nuclear.recipe.disable(recipes)
  for _, recipe in pairs(recipes) do
    if data.raw.recipe[recipe] then
      data.raw.recipe[recipe].enabled = false
    end
  end
end
