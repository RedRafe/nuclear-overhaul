local function item_to_matter(item)
  return 
  {
    type = "recipe",
    name = item.item_name .. "-to-matter",
    localised_name = {"recipe-name.to-matter", {item.type .. "-name." .. item.item_name}},
    category = "matter-conversion",
    subgroup = "matter-conversion",
    allow_as_intermediate = false,
    icons =
    {
      { icon = no_path_g_others .. "compatibility/Krastorio2/" .. item.item_name .. "-to-matter.png", icon_size = 64, icon_mipmaps = 1 }
    },
    energy_required = item.energy_required,
    enabled = false,
    hidden = false,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    ingredients =
    {
      { type = item.type, name = item.item_name, amount = item.minimum_conversion_quantity }
    },
    results=
    {
      { type = "fluid", name = "matter", amount = item.matter_value }
    },
    order = "z[".. item.item_name .."-to-matter]"
  }
end

local function matter_to_item(item)
  return
  {
    type = "recipe",
    name = "matter-to-" .. item.item_name,
    localised_name = {"recipe-name.matter-to", {item.type .. "-name." .. item.item_name}},
    category = "matter-deconversion",
    subgroup = "matter-deconversion",
    allow_as_intermediate = false,
    icons =
    {
      { icon = no_path_g_others .. "compatibility/Krastorio2/matter-to-" .. item.item_name .. ".png", icon_size = 64, icon_mipmaps = 1 }
    },
    energy_required = item.energy_required,
    enabled = false,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    ingredients =
    {
      { type = "fluid", name = "matter", amount = item.matter_value }
    },
    results=
    {
      { type = item.type, name = item.item_name, amount = item.minimum_conversion_quantity}
    },
    order = "z[matter-to-" .. item.item_name .."]"
  }
end

-- @ recipes: Table<String>
-- return Table<Effect>
local function _tableToEffects(recipes)
  local effects = {}
  for _, name in pairs(recipes) do
    table.insert(effects, {type = "unlock-recipe", recipe = name})
  end
  return effects
end

local matter_items = {
  -- thorium-ore
  {
		item_name = "thorium-ore",
    type = "item",
		minimum_conversion_quantity = 10, 
		matter_value = 8,
		energy_required = 1,
		unlocked_by_technology = "kr-matter-thorium-processing"
	},
  -- thorium-232
  {
		item_name = "thorium-232",
    type = "item",
		minimum_conversion_quantity = 10,
		matter_value = 47.1, 
		energy_required = 1,
		unlocked_by_technology = "kr-matter-thorium-processing"
	}
}

if mods["Krastorio2"] then
  data:extend({
    {
      type = "technology",
      name = "kr-matter-thorium-processing",
      localised_name = "Thorium conversion",
      icon = no_path_g_others .. "compatibility/Krastorio2/matter-thorium.png",
      icon_size = 256, 
      icon_mipmaps = 1,
      effects = _tableToEffects({"thorium-ore-to-matter", "thorium-232-to-matter", "matter-to-thorium-ore", "matter-to-thorium-232"}),
      prerequisites = {"kr-matter-processing"},
      order = "g-e-e",
      unit =
      {
        count = 350,
        ingredients = 
        {
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          {"matter-tech-card", 1}				
        },
        time = 45
      }
    }
  })

  for _, item in pairs(matter_items) do
    data:extend({ matter_to_item(item) })
    data:extend({ item_to_matter(item) })
  end

end
