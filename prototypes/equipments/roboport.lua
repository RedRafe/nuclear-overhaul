nuclear.debug.log("--roboport")

data:extend({
  {
    type = "roboport-equipment",
    name = "personal-roboport-u236-equipment",
    take_result = "personal-roboport-u236-equipment",
    sprite =
    {
      filename = no_path_g_equipments .. "personal-roboport-u236-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version =
      {
        filename = no_path_g_equipments .. "hr-personal-roboport-u236-equipment.png",
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
      buffer_capacity = "50MJ", --35 MJ
      input_flow_limit = "5000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1500kW", --might want to increase it

    robot_limit = 40,
    construction_radius = 25,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 3,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      draw_as_glow = true,
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.2, size = 3, color = {r = 0.5, g = 0.5, b = 1.0}},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 20,
    charging_distance = 2,
    charging_threshold_distance = 8,
    categories = {"armor"}
  },
})