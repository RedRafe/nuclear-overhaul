data:extend({
  {
    type = "battery-equipment",
    name = "battery-mk2-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
      width = 32,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-battery-mk2-equipment.png",
        width = 64,
        height = 128,
        priority = "medium",
        scale = 0.5
      }
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "100MJ",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
})