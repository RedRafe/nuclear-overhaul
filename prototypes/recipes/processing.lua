data:extend({
  {
    type = "recipe",
    name = "uranium-processing-2",
    energy_required = 12,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"yellowcake", 2}}, --10
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "a[processing]-a[uranium-processing]",
    results =
    {
      {
        name = "uranium-235",
        probability = 0.007,
        amount = 1
      },
      {
        name = "uranium-238",
        probability = 0.993,
        amount = 1
      }
    }
  },
  {
    type = "recipe",
    name = "thorium-processing",
    energy_required = 10,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"thorium-ore", 10}},
    icon = path_g_icons .. "thorium-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "a[processing]-b[thorium-processing]",
    results =
    {
      {
        name = "thorium-232",
        amount = 2
      },
      {
        name = "thorium-233",
        probability = 0.05,
        amount = 1
      },
      {
        name = "stone",
        amount = 7
      }
    },
  }
})