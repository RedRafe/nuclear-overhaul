nuclear.debug.log("--fuel")

data:extend({
  -- Uranium MOX
  {
    type = "recipe",
    name = "uranium-mox",
    energy_required = 10, -- 60
    enabled = false,
    category = "centrifuging",
    ingredients =
    {
      {"steel-plate", 1},
      {"uranium-235", 4},
      {"uranium-238", 96}
    },
    result = "uranium-mox",
    result_count = 1,
    requester_paste_multiplier = 1
  },
  -- Plutonium MOX
  {
    type = "recipe",
    name = "plutonium-mox",
    energy_required = 15, -- 60
    enabled = false,
    category = "centrifuging",
    ingredients =
    {
      {"steel-plate", 1},
      {"uranium-238", 93},
      {"plutonium-238", 5},
      {"plutonium-239", 2}
    },
    result = "plutonium-mox",
    result_count = 1,
    requester_paste_multiplier = 1
  },
  -- Thorium MOX
  {
    type = "recipe",
    name = "thorium-mox",
    energy_required = 20, -- 60
    enabled = false,
    category = "centrifuging",
    ingredients =
    {
      {"steel-plate", 1},
      {"uranium-233", 1},
      {"plutonium-239", 5},
      {"thorium-232", 77},
      {"fluoride", 20}
    },
    result = "thorium-mox",
    result_count = 1,
    requester_paste_multiplier = 1
  },
  -- Plutonium Fuel
  {
    type = "recipe",
    name = "plutonium-fuel",
    energy_required = 90,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"plutonium-238", 1}, {"rocket-fuel", 1}},
    icon = no_path_g_icons .. "plutonium-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    result = "plutonium-fuel"
  },
  {
    type = "item",
    name = "plutonium-fuel",
    icon = no_path_g_icons .. "plutonium-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = no_path_g_icons .. "plutonium-fuel.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = "__base__/graphics/icons/nuclear-fuel-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    fuel_category = "chemical",
    fuel_value = "1.21GJ",
    fuel_acceleration_multiplier = 4.20,
    fuel_top_speed_multiplier = 1.15,
    fuel_glow_color = {r = 0.5, g = 0.5, b = 0.1},
    subgroup = "intermediate-product",
    order = "q[uranium-rocket-fuel]-2",
    stack_size = 1
  },
  -- Throium fuel
  {
    type = "recipe",
    name = "thorium-fuel",
    energy_required = 90,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"thorium-232", 1}, {"rocket-fuel", 1}},
    icon = no_path_g_icons .. "thorium-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    result = "thorium-fuel"
  },
  {
    type = "item",
    name = "thorium-fuel",
    icon = no_path_g_icons .. "thorium-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = no_path_g_icons .. "thorium-fuel.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = "__base__/graphics/icons/nuclear-fuel-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    fuel_category = "chemical",
    fuel_value = "1.21GJ",
    fuel_acceleration_multiplier = 2.5,
    fuel_top_speed_multiplier = 3.2,
    fuel_glow_color = {r = 1, g = 0.1, b = 0.2},
    subgroup = "intermediate-product",
    order = "q[uranium-rocket-fuel]-3",
    stack_size = 1
  },
})