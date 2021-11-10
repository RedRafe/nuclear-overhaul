if mods["Krastorio2"] then

  -- allow nuclear fuel in kr-nuclear-locomotive
  data.raw.locomotive["kr-nuclear-locomotive"].burner.fuel_categories = {"uranium-mix", "plutonium-mix", "thorium-mix"}
  nuclear.recipe.disable({"nuclear-fuel-cell"})
  
  -- overwrite uranium processing according to NO
  data.raw.recipe["uranium-processing"] = 
  {
    type = "recipe",
    name = "uranium-processing",
    energy_required = 8, -- changed from 12 to 15 of K2 to 8
    enabled = false,
    category = "chemistry",
    ingredients =
    {
      {
        type = "item",
        name = "uranium-ore",
        amount = 10},
      {
        type = "fluid",
        name = "sulfuric-acid",
        amount = 5}
    },
    icon = path_g_icons .. "uranium-powder.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "k[uranium-processing-1]",
    results =
    {
      {
        name = "yellowcake",
        amount = 2
      },
      {
        name = "stone",
        amount = 6
      },
      {
        name = "iron-ore",   -- add iron-ore byproduct of K2
        amount = 2
      }
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, -- #ffa342ff
      secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, -- #ffb85fff
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
      quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, -- #ff7e45ff
    }
  }

  -- rewrite nuclear-fuel-reprocessing to suit K2 tritium generation
  data.raw.recipe["uranium-mox-reprocessing"] = {
    type = "recipe",
    name = "uranium-mox-reprocessing",
    energy_required = 120,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"used-uranium-mox", 1}},
    icon = path_g_icons .. "nuclear-fuel-reprocessing-1.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "f[reprocessing]-a[rep-uranium-mox]",
    results =
    {
      {
        name = "uranium-235",
        amount = 1
      },
      {
        name = "uranium-237",
        amount = 5
      },
      {
        name = "uranium-238",
        amount = 88
      },
      {
        name = "stone",
        amount = 4
      },
      {
        name = "plutonium-238",
        probability = 0.35,
        amount = 1
      },
      {
        name = "plutonium-239",
        probability = 0.65,
        amount = 1
      },
      {
        name = "tritium",
        probability = 0.15,
        amount = 1
      }
    }
  }

  -- disable extra recipes of NO
  local disable_recipes = {
    "uranium-rounds-magazine-u236",
    "uranium-rounds-magazine-pu238",
    "atomic-bomb-u236",
    "atomic-bomb-pu238"
  }

  nuclear.recipe.disable(disable_recipes)
  nuclear.technology.removeUnlockEffects("uranium-ammo", disable_recipes)
  nuclear.technology.removeUnlockEffects("atomic-bomb", disable_recipes)

  -- create new ammo recipes for K2 items
  local kr_ammo_recipes = {
    "uranium-rifle-magazine",
    "uranium-anti-material-rifle-magazine"
  }

  nuclear.ammo.addRecipeVariation(kr_ammo_recipes, nuclear.ammo.extensions)
  local effects = nuclear.ammo.getRecipeNames(kr_ammo_recipes, nuclear.ammo.extensions)
  nuclear.technology.addUnlockEffects("uranium-ammo", effects)

  -- create new bomb recipes for K2 items
  local kr_bomb_recipes = {
    "nuclear-artillery-shell",
    "atomic-bomb",
  }

  nuclear.ammo.addRecipeVariation(kr_bomb_recipes, nuclear.ammo.extensions)
  local effects = nuclear.ammo.getRecipeNames(kr_bomb_recipes, nuclear.ammo.extensions)
  nuclear.technology.setUnlockEffects("atomic-bomb", effects)

  -- create new nuclear recipes for K2 items
  local kr_bomb_recipes = {
    "nuclear-turret-rocket"
  }

  nuclear.ammo.addRecipeVariation(kr_bomb_recipes, nuclear.ammo.extensions)
  local effects = nuclear.ammo.getRecipeNames(kr_bomb_recipes, nuclear.ammo.extensions)
  nuclear.technology.addUnlockEffects("kr-rocket-turret", effects)

  -- adjust technologies cost
  nuclear.technology.setCount("uranium-processing", 200)
  nuclear.technology.setCount("uranium-processing-2", 500)
  nuclear.technology.setCount("advanced-nuclear-power-2", 1000)
  nuclear.technology.setCount("advanced-nuclear-power-2", 1200)
  nuclear.technology.setCount("nuclear-fuel-reprocessing-1", 250)
  nuclear.technology.setCount("nuclear-fuel-reprocessing-2", 250)
  nuclear.technology.setCount("nuclear-fuel-reprocessing-3", 250)

  -- adjust technologies dependencies
  nuclear.technology.removePrerequisite("kr-nuclear-locomotive", {"nuclear-power"})
  nuclear.technology.addPrerequisite("kr-nuclear-locomotive", {"advanced-nuclear-power"})

  nuclear.technology.removePrerequisite("uranium-ammo", {"uranium-processing"})
  nuclear.technology.addPrerequisite("uranium-ammo", {"uranium-processing-2"})

  nuclear.technology.removePrerequisite("production-science-pack", {"uranium-processing"})
  nuclear.technology.addPrerequisite("production-science-pack", {"uranium-processing-2"})

  nuclear.technology.removePrerequisite("uranium-processing", {"concrete"})

  nuclear.technology.removePrerequisite("kr-nuclear-reactor-equipment", {"nuclear-power"})
  nuclear.technology.addPrerequisite("kr-nuclear-reactor-equipment", {"advanced-nuclear-power"})
end