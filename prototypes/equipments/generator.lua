nuclear.debug.log("--generator")

data:extend({
  {
    type = "generator-equipment",
    name = "fusion-reactor-u236-equipment",
    sprite =
    {
      filename = no_path_g_equipments .. "fusion-reactor-u236-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      hr_version =
      {
        filename = no_path_g_equipments .. "hr-fusion-reactor-u236-equipment.png",
        width = 256,
        height = 256,
        priority = "medium",
        scale = 0.5
      }
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "1200kW",
    categories = {"armor"}
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-pu238-equipment",
    sprite =
    {
      filename = no_path_g_equipments .. "fusion-reactor-pu238-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      hr_version =
      {
        filename = no_path_g_equipments .. "hr-fusion-reactor-pu238-equipment.png",
        width = 256,
        height = 256,
        priority = "medium",
        scale = 0.5
      }
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "1.8MW",
    categories = {"armor"}
  },
})