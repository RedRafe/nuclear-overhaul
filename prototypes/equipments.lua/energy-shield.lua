data:extend({
  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk2-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-energy-shield-mk2-equipment.png",
        width = 128,
        height = 128,
        priority = "medium",
        scale = 0.5
      }
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 150,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "180kJ",
      input_flow_limit = "360kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "30kJ",
    categories = {"armor"}
  },
})