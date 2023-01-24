nuclear.debug.log("--recipe")

local Utils = require(no_path_lib .. "utils")

-- Uranium ore processing 1 in chem plants (Yellowcake)
data.raw["recipe"]["uranium-processing"] = 
{
  type = "recipe",
  name = "uranium-processing",
  energy_required = 5, -- 12
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
  icon = no_path_g_icons .. "uranium-powder.png",
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
      amount = 5
    },
    {
      name = "iron-ore",
      amount = 3
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

-- Kovarex enrichment process
local kep = data.raw["recipe"]["kovarex-enrichment-process"]
kep.subgroup = "radioactive-products"
kep.order = "b[enrichment]-a[uranium-enrichment]"

-- remove recipes
data.raw["recipe"]["uranium-fuel-cell"].enabled = false
data.raw["recipe"]["nuclear-fuel-reprocessing"].enabled = false
data.raw["recipe"]["nuclear-reactor"].enabled = false

-- recipes to prodictivity
local nuclearOverhaulProds = {
  "fluoride",
  "uranium-processing-2",
  "thorium-processing",
  "thorium-enrichment-process",
  "uranium-mox",
  "plutonium-mox",
  "thorium-mox"
}

-- starts with function
--function string.starts(String, Start)
--  return string.sub(String, 1, string.len(Start)) == Start
--end

for _, recipe in pairs(nuclearOverhaulProds) do
  for _, k in pairs(data.raw.module) do
    if (Utils.starts_with(k.name, 'productivity')) then
      table.insert(data.raw.module[k.name].limitation, recipe)
    end
  end
end