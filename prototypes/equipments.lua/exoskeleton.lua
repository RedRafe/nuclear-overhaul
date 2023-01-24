data:extend({
  {
    type = "movement-bonus-equipment",
    name = "exoskeleton-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
      width = 64,
      height = 128,
      priority = "medium",
      hr_version =
      {
        filename = "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
        width = 128,
        height = 256,
        priority = "medium",
        scale = 0.5
      }
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "200kW",
    movement_bonus = 0.3,
    categories = {"armor"}
  },
})