data:extend({
  {
    type = "technology",
    name = "battery-mk2-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/battery-mk2-equipment.png"),
    prerequisites = {"battery-equipment", "low-density-structure", "power-armor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk2-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 30
    },
    order = "g-i-b"
  },
})