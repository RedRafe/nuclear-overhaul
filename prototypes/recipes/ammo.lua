nuclear.debug.log("--ammo")

nuclear.ammo.U235_TO_U238 = 5
nuclear.ammo.extensions = {
  ["uranium-236"] = {
    item = "uranium-236",
    signature = "-u236",
    multiplier = 1,
    order = "-92[236]"
  },
  ["plutonium-238"] = {
    item = "plutonium-238",
    signature = "-pu238",
    multiplier = 3,
    order = "-94[238]"
  }
}

local ammo_recipes = {
  "uranium-rounds-magazine",
  "uranium-cannon-shell",
  "explosive-uranium-cannon-shell",
}

nuclear.ammo.addRecipeVariation(ammo_recipes, nuclear.ammo.extensions)
local effects = nuclear.ammo.getRecipeNames(ammo_recipes, nuclear.ammo.extensions)
nuclear.technology.setUnlockEffects("uranium-ammo", effects)

local bomb_recipes = {
  "atomic-bomb"
}
nuclear.ammo.addRecipeVariation(bomb_recipes, nuclear.ammo.extensions)
local effects = nuclear.ammo.getRecipeNames(bomb_recipes, nuclear.ammo.extensions)
nuclear.technology.setUnlockEffects("atomic-bomb", effects)

-- disable recipes (craft ammos only from u236 and atomic bomb from plutonium)
local disable_recipes = {
  "uranium-rounds-magazine",
  "uranium-rounds-magazine-pu238",
  "uranium-cannon-shell",
  "uranium-cannon-shell-pu238",
  "explosive-uranium-cannon-shell",
  "explosive-uranium-cannon-shell-pu238",
  "atomic-bomb",
  "atomic-bomb-u236"
}

nuclear.technology.removeUnlockEffects("uranium-ammo", disable_recipes)
nuclear.technology.removeUnlockEffects("atomic-bomb", disable_recipes)
nuclear.recipe.disable(disable_recipes)
