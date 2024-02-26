nolib.debug.log('-- fuel')

data:extend({
  -- Uranium MOX
  {
    type = 'recipe',
    name = 'uranium-mox',
    energy_required = 10, -- 60
    enabled = false,
    category = 'centrifuging',
    ingredients =
    {
      { 'steel-plate',  1 },
      { 'uranium-235',  4 },
      { 'uranium-238', 96 },
    },
    result = 'uranium-mox',
    result_count = 1,
    requester_paste_multiplier = 1
  },
  -- Plutonium MOX
  {
    type = 'recipe',
    name = 'plutonium-mox',
    energy_required = 15, -- 60
    enabled = false,
    category = 'centrifuging',
    ingredients =
    {
      { 'steel-plate',   1 },
      { 'uranium-238',  93 },
      { 'plutonium-238', 5 },
      { 'plutonium-239', 2 },
    },
    result = 'plutonium-mox',
    result_count = 1,
    requester_paste_multiplier = 1
  },
  -- Thorium MOX
  {
    type = 'recipe',
    name = 'thorium-mox',
    energy_required = 20, -- 60
    enabled = false,
    category = 'centrifuging',
    ingredients =
    {
      { 'steel-plate',   1 },
      { 'uranium-233',   1 },
      { 'plutonium-239', 5 },
      { 'thorium-232',  77 },
      { 'fluoride',     20 },
    },
    result = 'thorium-mox',
    result_count = 1,
    requester_paste_multiplier = 1
  },
  -- Plutonium Fuel
  {
    type = 'recipe',
    name = 'plutonium-fuel',
    energy_required = 90,
    enabled = false,
    category = 'centrifuging',
    ingredients = {
      { 'plutonium-238', 1 },
      { 'rocket-fuel',   1 }
    },
    icon = no_path_g_icons .. 'plutonium-fuel.png',
    icon_size = 64, icon_mipmaps = 4,
    result = 'plutonium-fuel'
  },
  -- Throium fuel
  {
    type = 'recipe',
    name = 'thorium-fuel',
    energy_required = 90,
    enabled = false,
    category = 'centrifuging',
    ingredients = {
      { 'thorium-232', 1 },
      { 'rocket-fuel', 1 }
    },
    icon = no_path_g_icons .. 'thorium-fuel.png',
    icon_size = 64, icon_mipmaps = 4,
    result = 'thorium-fuel'
  },
})

nolib.whitelist_productivity('uranium-mox')
nolib.whitelist_productivity('plutonium-mox')
nolib.whitelist_productivity('thorium-mox')
