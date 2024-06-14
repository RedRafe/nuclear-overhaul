nolib.debug.log('-- -- Cleanup')
require 'prototypes.cleanup.technology'


if mods['IndustrialRevolution3'] then
  data:extend({
    -- Nuclear fuel reprocessing 1
  {
    type = 'technology',
    name = 'nuclear-fuel-reprocessing-1',
    localised_description = { 'technology-description.nuclear-fuel-reprocessing-1' },
    icon_size = 256, icon_mipmaps = 4,
    icon = no_path_g_technologies .. 'nuclear-fuel-reprocessing-1.png',
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'uranium-mox-reprocessing'
      }
    },
    prerequisites = { 'advanced-nuclear-power' },
    unit =
    {
      ingredients =
      {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
      },
      time = 30,
      count = 50
    },
    order = 'e-p-b-c'
  },
  -- Nuclear fuel reprocessing 2
  {
    type = 'technology',
    name = 'nuclear-fuel-reprocessing-2',
    localised_description = { 'technology-description.nuclear-fuel-reprocessing-2' },
    icon_size = 256, icon_mipmaps = 4,
    icon = no_path_g_technologies .. 'nuclear-fuel-reprocessing-2.png',
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'plutonium-mox-reprocessing'
      }
    },
    prerequisites = { 'advanced-nuclear-power-2' },
    unit =
    {
      ingredients =
      {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
      },
      time = 30,
      count = 150
    },
    order = 'e-p-b-c'
  },
  -- Nuclear fuel reprocessing 3
  {
    type = 'technology',
    name = 'nuclear-fuel-reprocessing-3',
    localised_description = { 'technology-description.nuclear-fuel-reprocessing-3' },
    icon_size = 256, icon_mipmaps = 4,
    icon = no_path_g_technologies .. 'nuclear-fuel-reprocessing-3.png',
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'thorium-mox-reprocessing'
      }
    },
    prerequisites = { 'advanced-nuclear-power-3' },
    unit =
    {
      ingredients =
      {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'utility-science-pack', 1 },
      },
      time = 30,
      count = 300
    },
    order = 'e-p-b-c'
  }
  })
end