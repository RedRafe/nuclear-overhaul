data:extend({
  {
    type = "active-defense-equipment",
    name = "personal-laser-defense-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version = {
        filename = "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",
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
      buffer_capacity = "220kJ"
    },

    attack_parameters =
    {
      type = "beam",
      cooldown = 40,
      range = 15,
      --source_direction_count = 64,
      --source_offset = {0, -3.423489 / 4},
      damage_modifier = 3,
      ammo_type =
      {
        category = "laser",
        energy_consumption = "50kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 15,
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