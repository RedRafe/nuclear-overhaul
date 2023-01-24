data:extend({
  {
    type = "technology",
    name = "power-armor-mk2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk2"
      }
    },
    prerequisites = {"power-armor", "military-4", "speed-module-2", "effectivity-module-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "g-c-b"
  },
})