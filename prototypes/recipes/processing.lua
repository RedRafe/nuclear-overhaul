nolib.debug.log('-- processing')

data:extend({
  {
    type = 'recipe',
    name = 'uranium-processing-2',
    energy_required = 30, --12
    enabled = false,
    category = 'centrifuging',
    ingredients = {{ 'yellowcake', 3}}, --2, 10
    icon = '__base__/graphics/icons/uranium-processing.png',
    icon_size = 64, icon_mipmaps = 4,
    subgroup = 'radioactive-products',
    order = 'a[processing]-a[uranium-processing]',
    results =
    {
      {name = 'uranium-235', amount = 1, probability = 0.007},
      {name = 'uranium-238', amount = 1, probability = 0.993},
    }
  },
  {
    type = 'recipe',
    name = 'thorium-processing',
    energy_required = 10,
    enabled = false,
    category = 'centrifuging',
    ingredients = {{ 'thorium-ore', 10}},
    icon = no_path_g_icons .. 'thorium-processing.png',
    icon_size = 64, icon_mipmaps = 4,
    subgroup = 'radioactive-products',
    order = 'a[processing]-b[thorium-processing]',
    results =
    {
      { name = 'thorium-232', amount = 2 },
      { name = 'thorium-233', amount = 1, probability = 0.05 },
      { name = 'stone',       amount = 4 },
      { name = 'copper-ore',  amount = 3 },
    },
  }
})

nolib.whitelist_productivity('uranium-processing-2')
