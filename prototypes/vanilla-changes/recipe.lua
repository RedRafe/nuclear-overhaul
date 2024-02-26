nolib.debug.log('-- recipe')

-- Uranium ore processing 1 in chem plants (Yellowcake)
if data.raw.recipe['uranium-processing'] then
  data.raw.recipe['uranium-processing'] = 
  {
    type = 'recipe',
    name = 'uranium-processing',
    energy_required = 5, -- 12
    enabled = false,
    category = 'chemistry',
    ingredients =
    {
      { type = 'item',  name = 'uranium-ore',   amount = 10 },
      { type = 'fluid', name = 'sulfuric-acid', amount =  5 },
    },
    icon = no_path_g_icons .. 'uranium-powder.png',
    icon_size = 64, icon_mipmaps = 4,
    subgroup = 'raw-material',
    order = 'k[uranium-processing-1]',
    results =
    {
      { name = 'yellowcake', amount = 2 },
      { name = 'stone',      amount = 5 },
      { name = 'iron-ore',   amount = 3 },
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, -- #ffa342ff
      secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, -- #ffb85fff
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
      quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, -- #ff7e45ff
    }
  }
end

nolib.update_prototypes({
  -- Kovarex enrichment process
  {
    name = 'kovarex-enrichment-process',
    type = 'recipe',
    subgroup = 'radioactive-products',
    order = 'b[enrichment]-a[uranium-enrichment]',
  }
})

nolib.remove_all_recipe_effects('uranium-fuel-cell')
nolib.disable_recipe('uranium-fuel-cell')
nolib.remove_all_recipe_effects('nuclear-fuel-reprocessing')
nolib.disable_recipe('nuclear-fuel-reprocessing')
nolib.remove_all_recipe_effects('nuclear-reactor')
nolib.disable_recipe('nuclear-reactor')
