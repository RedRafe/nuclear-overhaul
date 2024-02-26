nolib.debug.log('-- equipment')

data:extend({
  {
    type = 'item',
    name = 'battery-fluoride-th233-equipment',
    --localised_description = { 'item-description.battery-equipment' },
    icon = no_path_g_icons .. 'battery-fluoride-th233-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'battery-fluoride-th233-equipment',
    subgroup = 'equipment',
    order = 'b[battery]-b[battery-equipment-mk3]',
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'energy-shield-th232-equipment',
    --localised_description = { 'item-description.energy-shield-equipment' },
    icon = no_path_g_icons .. 'energy-shield-th232-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'energy-shield-th232-equipment',
    subgroup = 'military-equipment',
    order = 'a[shield]-b[energy-shield-equipment-mk3]',
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'exoskeleton-np237-equipment',
    icon = no_path_g_icons .. 'exoskeleton-np237-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'exoskeleton-np237-equipment',
    subgroup = 'equipment',
    order = 'd[exoskeleton]-a[exoskeleton-np237-equipment]',
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'fusion-reactor-u236-equipment',
    icon = no_path_g_icons .. 'fusion-reactor-u236-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'fusion-reactor-u236-equipment',
    subgroup = 'equipment',
    order = 'a[energy-source]-c[fusion-reactor-236u]',
    default_request_amount = 1,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'fusion-reactor-pu238-equipment',
    icon = no_path_g_icons .. 'fusion-reactor-pu238-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'fusion-reactor-pu238-equipment',
    subgroup = 'equipment',
    order = 'a[energy-source]-c[fusion-reactor-238pu]',
    default_request_amount = 1,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'night-vision-th232-equipment',
    icon = no_path_g_icons .. 'night-vision-th232-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'night-vision-th232-equipment',
    subgroup = 'equipment',
    order = 'f[night-vision]-a[night-vision-th232-equipment]',
    default_request_amount = 1,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'personal-laser-defense-pa233-equipment',
    icon = no_path_g_icons .. 'personal-laser-defense-pa233-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'personal-laser-defense-pa233-equipment',
    subgroup = 'military-equipment',
    order = 'b[active-defense]-a[personal-laser-defense-pa233-equipment]',
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = 'item',
    name = 'personal-roboport-u236-equipment',
    --localised_description = { 'item-description.personal-roboport-equipment' },
    icon = no_path_g_icons .. 'personal-roboport-u236-equipment.png',
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = 'personal-roboport-u236-equipment',
    subgroup = 'equipment',
    order = 'e[robotics]-b[personal-roboport-u236-equipment]',
    default_request_amount = 1,
    stack_size = 20
  },
})