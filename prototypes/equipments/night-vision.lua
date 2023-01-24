nuclear.debug.log("--night-vision")

data:extend({
  {
    type = "night-vision-equipment",
    name = "night-vision-th232-equipment",
    sprite =
    {
      filename = no_path_g_equipments .. "night-vision-th232-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = no_path_g_equipments .. "hr-night-vision-th232-equipment.png",
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
    energy_source =
    {
      type = "electric",
      buffer_capacity = "200kJ",
      input_flow_limit = "240kW",
      usage_priority = "primary-input"
    },
    energy_input = "30kW",
    categories = {"armor"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
    darkness_to_turn_on = 0.4,
    color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
  },
})