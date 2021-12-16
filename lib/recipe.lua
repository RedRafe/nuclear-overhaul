if not nuclear.recipe then nuclear.recipe = {} end

-- @ recipe: Recipe
-- return Table<Ingredient> or nil
function getIngredients(recipe)
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
function disable(recipes)
  for _, recipe in pairs(recipes) do
    if data.raw.recipe[recipe] then
      data.raw.recipe[recipe].enabled = false
    end
  end
end

---------------------------------------------------------------------------

nuclear.recipe.disable = disable
nuclear.recipe.getIngredients = getIngredients
