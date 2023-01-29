nuclear.debug.log("--fuel")
local OUTPUT_COEFF = 0.4 

--[[
  +---------+---------+-----------+
  | Reactor | Base(GJ)| Converted |
  +---------+---------+-----------+
  | LWR     | 19.2    | 64        |
  | PHWR    | 25.9    | 86        |
  | LFTR    | 38.4    | 128       |
  +---------+---------+-----------+
]]

data:extend({
  -- Uranium MOX
  {
    type = "item",
    name = "uranium-mox",
    icon = no_path_g_icons .. "uranium-mox.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = no_path_g_icons .. "uranium-mox.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "radioactive-products",
    order = "c[mox]-a[u]",
    fuel_category = "uranium-mix",
    burnt_result = "used-uranium-mox",
    fuel_value = "25.6GJ", --64GJ
    stack_size = 10
  },
  -- Plutonium MOX
  {
    type = "item",
    name = "plutonium-mox",
    icon = no_path_g_icons .. "plutonium-mox.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = no_path_g_icons .. "plutonium-mox.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "radioactive-products",
    order = "c[mox]-b[pu]",
    fuel_category = "plutonium-mix",
    burnt_result = "used-plutonium-mox",
    fuel_value = "34.4GJ", -- 74GJ
    stack_size = 10
  },
  -- Thorium MOX
  {
    type = "item",
    name = "thorium-mox",
    icon = no_path_g_icons .. "thorium-mox.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = no_path_g_icons .. "thorium-mox.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "radioactive-products",
    order = "c[mox]-c[th]",
    fuel_category = "thorium-mix",
    burnt_result = "used-thorium-mox",
    fuel_value = "51.2GJ", --1600 / 3840 GJ overkill
    stack_size = 10
  },
  -- Used Uranium MOX
  {
    type = "item",
    name = "used-uranium-mox",
    icon = no_path_g_icons .. "used-uranium-mox.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "e[used-mox]-a[u]",
    stack_size = 50
  },
  -- Used Plutonium MOX
  {
    type = "item",
    name = "used-plutonium-mox",
    icon = no_path_g_icons .. "used-plutonium-mox.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "e[used-mox]-b[pu]",
    stack_size = 50
  },
  -- Used LFTR MOX
  {
    type = "item",
    name = "used-thorium-mox",
    icon = no_path_g_icons .. "used-thorium-mox.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "e[used-mox]-c[th]",
    stack_size = 5
  }
})