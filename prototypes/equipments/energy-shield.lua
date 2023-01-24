nuclear.debug.log("--energy-shield")

data:extend({
  {
    type = "energy-shield-equipment",
    name = "energy-shield-th232-equipment",
    sprite =
    {
      filename = no_path_g_equipments .. "energy-shield-th232-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = no_path_g_equipments .. "hr-energy-shield-th232-equipment.png",
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
    max_shield_value = 350,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "400kJ",
      input_flow_limit = "480kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "50kJ",
    categories = {"armor"}
  },
})