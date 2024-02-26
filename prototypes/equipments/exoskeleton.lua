nolib.debug.log('-- exoskeleton')

data:extend({
  {
    type = 'movement-bonus-equipment',
    name = 'exoskeleton-np237-equipment',
    sprite =
    {
      filename = no_path_g_equipments .. 'exoskeleton-np237-equipment.png',
      width = 64,
      height = 128,
      priority = 'medium',
      hr_version =
      {
        filename = no_path_g_equipments .. 'hr-exoskeleton-np237-equipment.png',
        width = 128,
        height = 256,
        priority = 'medium',
        scale = 0.5
      }
    },
    shape =
    {
      width = 2,
      height = 4,
      type = 'full'
    },
    energy_source =
    {
      type = 'electric',
      usage_priority = 'secondary-input'
    },
    energy_consumption = '400kW',
    movement_bonus = 0.5,
    categories = { 'armor' }
  },
})