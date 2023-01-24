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
})