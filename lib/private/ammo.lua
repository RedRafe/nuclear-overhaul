local Utils = require(path_public_lib .. "utils")

nuclear.ammo = {}
-- nuclear.ammo.U235_TO_U238 = 5

-- @ ingrenients: Table<Ingrendient>
-- return int
local function _gcdIngredients(ingredients)
  if Utils.table_size(ingredients) < 2 then
    return 1
  end
  local gcd = ingredients[1][2]
  for i = 2, Utils.table_size(ingredients) do
    gcd = Utils.gcd(gcd, ingredients[i][2])
  end
  return gcd
end

-- @ ingredients: Table<Ingredient>
-- @ extension: Extension
-- return Table<Ingredient>
local function _renewIngredients(ingredients, extension)
  local filtered_ingredients = {}
  local ext_amount = 0

  -- get new ingredient list
  for _, ingredient in pairs(ingredients) do
    if ingredient[1] == "uranium-235" then
      ext_amount = nuclear.ammo.U235_TO_U238 * ingredient[2]
    elseif ingredient[1] == "uranium-238" then
      ext_amount = ext_amount + ingredient[2]
    else
      table.insert(filtered_ingredients, {ingredient[1], ingredient[2] * extension.multiplier})
    end
  end
  table.insert(filtered_ingredients, {extension.item, ext_amount})

  return filtered_ingredients
end

-- @ ingredients: Table<Ingredient> or Table<Lua::Ingredient>
-- return Table<Ingredient>
local function _formatIngredients(ingredients)
  if ingredients[1].type then
    local formatted_ingredients = {}
    for _, v in pairs(ingredients) do
      table.insert(formatted_ingredients, {v.name, v.amount})
    end
    return formatted_ingredients
  end
  return ingredients
end


-- @ names: Table<String>
-- return Table<Recipe>
local function _getRecipeFromName(names)
  local recipes = {}
  for _, name in pairs(names) do
    if data.raw.recipe[name] ~= nil then
      table.insert(recipes, data.raw.recipe[name])
    else
      error("Recipe " .. name .. " not found in data.raw")
    end
  end
  return recipes
end

-- @ names: Table<String>
-- @ extension: Table<Extension>
function nuclear.ammo.addRecipeVariation(names, extensions)
  local recipes = _getRecipeFromName(names)
  for _, recipe in pairs(recipes) do
    for _, extension in pairs(extensions) do
      local renewed_ingredients = _renewIngredients(_formatIngredients(recipe.ingredients), extension)
      
      -- reduce by GCD
      local gcd = _gcdIngredients(renewed_ingredients)
      if gcd > 1 then
        for _, elem in pairs(renewed_ingredients) do
          elem[2] = elem[2] / gcd
        end
      end

      -- add recipe
      data.raw.recipe[recipe.name .. extension.signature] =
        {
          type = "recipe",
          name = recipe.name .. extension.signature,
          enabled = recipe.enabled,
          energy_required = recipe.energy_required,
          ingredients = renewed_ingredients,
          result = recipe.name,
          result_count = extension.multiplier / gcd,
          subgroup = recipe.subgroup,
          order = data.raw.ammo[recipe.name].order .. extension.order
        }
      --})
    end
  end
end

-- @ recipes: Table<String>
-- @ extensions: Table<Extension>
function nuclear.ammo.getRecipeNames(recipes, extensions)
  local names = {}
  for _, recipe in pairs(recipes) do
    table.insert(names, recipe)
    for _, extension in pairs(extensions) do
      table.insert(names, recipe .. extension.signature)
    end
  end
  return names
end
