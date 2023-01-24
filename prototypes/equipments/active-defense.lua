nuclear.debug.log("--active-defense")

data:extend({
  {
    type = "active-defense-equipment",
    name = "personal-laser-defense-pa233-equipment",
    sprite =
    {
      filename = no_path_g_equipments .. "personal-laser-defense-pa233-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version = {
        filename = no_path_g_equipments .. "hr-personal-laser-defense-pa233-equipment.png",
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
      usage_priority = "secondary-input",
      buffer_capacity = "4MJ"
    },

    attack_parameters =
    {
      type = "beam",
      cooldown = 40,
      range = 18,
      --source_direction_count = 64,
      --source_offset = {0, -3.423489 / 4},
      damage_modifier = 4.5, --3
      ammo_type =
      {
        category = "laser",
        energy_consumption = "75kJ", --50kj
        action =
        {
          type = "direct", --area
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 18,
            duration = 40,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },
    automatic = true,
    categories = {"armor"}
  },
})