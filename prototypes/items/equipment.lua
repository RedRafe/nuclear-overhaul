data:extend({
  {
    type = "item",
    name = "battery-mk2-equipment",
    localised_description = {"item-description.battery-equipment"},
    icon = "__base__/graphics/icons/battery-mk2-equipment.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "battery-mk2-equipment",
    subgroup = "equipment",
    order = "b[battery]-b[battery-equipment-mk2]",
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = "item",
    name = "energy-shield-mk2-equipment",
    localised_description = {"item-description.energy-shield-equipment"},
    icon = "__base__/graphics/icons/energy-shield-mk2-equipment.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "energy-shield-mk2-equipment",
    subgroup = "military-equipment",
    order = "a[shield]-b[energy-shield-equipment-mk2]",
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = "item",
    name = "exoskeleton-equipment",
    icon = "__base__/graphics/icons/exoskeleton-equipment.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "exoskeleton-equipment",
    subgroup = "equipment",
    order = "d[exoskeleton]-a[exoskeleton-equipment]",
    default_request_amount = 5,
    stack_size = 20
  },
  {
    type = "item",
    name = "fusion-reactor-equipment",
    icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "fusion-reactor-equipment",
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor]",
    default_request_amount = 1,
    stack_size = 20
  },
  {
    type = "item",
    name = "night-vision-equipment",
    icon = "__base__/graphics/icons/night-vision-equipment.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "night-vision-equipment",
    subgroup = "equipment",
    order = "f[night-vision]-a[night-vision-equipment]",
    default_request_amount = 1,
    stack_size = 20
  },
})