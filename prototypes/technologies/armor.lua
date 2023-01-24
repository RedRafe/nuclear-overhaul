nuclear.debug.log("--armor")

data:extend({
  {
    type = "technology",
    name = "power-armor-pu238",
    icon_size = 256, icon_mipmaps = 4,
    icon = no_path_g_technologies .. "power-armor-pu238.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-pu238"
      }
    },
    prerequisites = {"power-armor-mk2", "alpha-decay", "beta-decay", "space-science-pack"},
    unit =
    {
      count = 2000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    order = "g-c-b"
  },
})