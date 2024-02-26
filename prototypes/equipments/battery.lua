nolib.debug.log('-- battery')

data:extend({
  {
    type = 'battery-equipment',
    name = 'battery-fluoride-th233-equipment',
    sprite =
    {
      filename = no_path_g_equipments .. 'battery-fluoride-th233-equipment.png',
      width = 32,
      height = 64,
      priority = 'medium',
      hr_version =
      {
        filename = no_path_g_equipments .. 'hr-battery-fluoride-th233-equipment.png',
        width = 64,
        height = 128,
        priority = 'medium',
        scale = 0.5
      }
    },
    shape =
    {
      width = 1,
      height = 2,
      type = 'full'
    },
    energy_source =
    {
      type = 'electric',
      buffer_capacity = '500MJ', --100MJ
      usage_priority = 'tertiary'
    },
    categories = { 'armor' }
  },
})