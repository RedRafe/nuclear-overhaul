if not mods['Krastorio2'] then
  return
end

-- allow nuclear fuel in kr-nuclear-locomotive
nolib.update_prototypes({
  {
    name = 'kr-nuclear-locomotive',
    type = 'locomotive',
    burner = {
      fuel_categories = { 'uranium-mix', 'plutonium-mix', 'thorium-mix' }
    }
  }
})

-- overwrite uranium processing according to NO
data.raw.recipe['uranium-processing'] = 
{
  type = 'recipe',
  name = 'uranium-processing',
  energy_required = 8, -- changed from 12 to 15 of K2 to 8
  enabled = false,
  category = 'chemistry',
  ingredients =
  {
    { type = 'item',  name = 'uranium-ore',   amount = 10 },
    { type = 'fluid', name = 'sulfuric-acid', amount =  5 },
  },
  icon = no_path_g_icons .. 'pile-chunk-yellowcake-4.png',
  icon_size = 64, icon_mipmaps = 4,
  subgroup = 'raw-material',
  order = 'k[uranium-processing-1]',
  results =
  {
    { name = 'yellowcake', amount = 2 },
    { name = 'stone',      amount = 5 },
    { name = 'iron-ore',   amount = 3 }, -- add iron-ore byproduct of K2 back
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
data.raw.recipe['uranium-mox-reprocessing'] = {
  type = 'recipe',
  name = 'uranium-mox-reprocessing',
  energy_required = 120,
  enabled = false,
  category = 'centrifuging',
  ingredients = {{ 'used-uranium-mox', 1 }},
  icon = no_path_g_icons .. 'nuclear-fuel-reprocessing-1.png',
  icon_size = 64, icon_mipmaps = 4,
  subgroup = 'radioactive-products',
  order = 'f[reprocessing]-a[rep-uranium-mox]',
  results =
  {
    { name = 'uranium-235',   amount =  1 },
    { name = 'uranium-237',   amount =  5 },
    { name = 'uranium-238',   amount = 88 },
    { name = 'stone',         amount =  4 },
    { name = 'plutonium-238', amount =  1, probability = 0.35 },
    { name = 'plutonium-239', amount =  1, probability = 0.65 },
    { name = 'tritium',       amount =  1, probability = 0.15 },
  }
}

for _, ammo_recipe in pairs({
  'uranium-rifle-magazine',
  'uranium-anti-material-rifle-magazine',
  'nuclear-artillery-shell',
  'atomic-bomb',
  'nuclear-turret-rocket',
}) do
  nolib.replace_ingredient(ammo_recipe, 'uranium-238', 'uranium-236', 1, false)
  nolib.replace_ingredient(ammo_recipe, 'uranium-235', 'plutonium-238', 5/3, true)
end

-- adjust technologies cost
nolib.set_unit_count('uranium-processing', 200)
nolib.set_unit_count('uranium-processing-2', 500)
nolib.set_unit_count('advanced-nuclear-power-2', 1000)
nolib.set_unit_count('advanced-nuclear-power-2', 1200)
nolib.set_unit_count('nuclear-fuel-reprocessing-1', 250)
nolib.set_unit_count('nuclear-fuel-reprocessing-2', 250)
nolib.set_unit_count('nuclear-fuel-reprocessing-3', 250)

-- adjust technologies dependencies
nolib.remove_prerequisite('kr-nuclear-locomotive', 'nuclear-power')
nolib.add_prerequisite('kr-nuclear-locomotive', 'advanced-nuclear-power')

nolib.remove_prerequisite('uranium-ammo', 'uranium-processing')
nolib.add_prerequisite('uranium-ammo', 'uranium-processing-2')

nolib.remove_prerequisite('production-science-pack', 'uranium-processing')
nolib.add_prerequisite('production-science-pack', 'uranium-processing-2')

nolib.remove_prerequisite('uranium-processing', 'concrete')

nolib.remove_prerequisite('kr-nuclear-reactor-equipment', 'nuclear-power')
nolib.add_prerequisite('kr-nuclear-reactor-equipment', 'advanced-nuclear-power')
