nolib.debug.log('-- technology')

-- Uranium Processing
data.raw.technology['uranium-processing'] =
{
  type = 'technology',
  name = 'uranium-processing',
  icon_size = 1024, icon_mipmaps = 1,
  icon = no_path_g_technologies .. 'pile-chunk-yellowcake-4.png',
  effects =
  {
    {
      type = 'unlock-recipe',
      recipe = 'uranium-processing'
    }
  },
  prerequisites = { 'chemical-science-pack', 'concrete' },
  unit =
  {
    ingredients =
    {
      { 'automation-science-pack', 1 },
      { 'logistic-science-pack', 1 },
      { 'chemical-science-pack', 1 }
    },
    time = 60,
    count = 200
  },
  order = 'e-p-b-c'
}

-- Uranium Enrichment Process
data.raw.technology['kovarex-enrichment-process'] =
{
  type = 'technology',
  name = 'kovarex-enrichment-process',
  icon_size = 256, icon_mipmaps = 4,
  icon = '__base__/graphics/technology/kovarex-enrichment-process.png',
  effects =
  {
    {
      type = 'unlock-recipe',
      recipe = 'kovarex-enrichment-process'
    },
    {
      type = 'unlock-recipe',
      recipe = 'nuclear-fuel'
    }
  },
  prerequisites = { 'production-science-pack', 'uranium-processing-2', 'rocket-fuel' },
  unit =
  {
    ingredients =
    {
      { 'automation-science-pack', 1 },
      { 'logistic-science-pack', 1 },
      { 'chemical-science-pack', 1 },
      { 'production-science-pack', 1 }
    },
    time = 60,
    count = 1500
  },
  order = 'e-p-b-c'
}

-- Nuclear Power
data.raw.technology['nuclear-power'] =
{
  type = 'technology',
  name = 'nuclear-power',
  icon_size = 256, icon_mipmaps = 4,
  icon = '__base__/graphics/technology/nuclear-power.png',
  effects =
  {
    {
      type = 'unlock-recipe',
      recipe = 'heat-exchanger'
    },
    {
      type = 'unlock-recipe',
      recipe = 'heat-pipe'
    },
    {
      type = 'unlock-recipe',
      recipe = 'steam-turbine'
    }
  },
  prerequisites = { 'chemical-science-pack' },
  unit =
  {
    ingredients =
    {
      { 'automation-science-pack', 1 },
      { 'logistic-science-pack', 1 },
      { 'chemical-science-pack', 1 }
    },
    time = 30,
    count = 800
  },
  order = 'e-p-b-c'
}
