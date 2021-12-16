nuclear.debug.log("--thorium")

-- Thorium ore
data:extend({
  {
    type = "item",
    name = "thorium-ore",
    icon = path_g_icons .. "thorium-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      {
        layers =
        {
          {
            filename = path_g_icons .. "thorium-ore.png",
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
          {
            filename = path_g_icons .. "thorium-ore.png",
            blend_mode = "additive",
            draw_as_light = true,
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
        }
      },
      {
        layers =
        {
          {
            filename = path_g_icons .. "thorium-ore-1.png",
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
          {
            filename = path_g_icons .. "thorium-ore-1.png",
            blend_mode = "additive",
            draw_as_light = true,
            tint = { r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
        }
      },
      {
        layers =
        {
          {
            filename = path_g_icons .. "thorium-ore-2.png",
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
          {
            filename = path_g_icons .. "thorium-ore-2.png",
            blend_mode = "additive",
            draw_as_light = true,
            tint = { r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
        }
      },
      {
        layers =
        {
          {
            filename = path_g_icons .. "thorium-ore-3.png",
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
          {
            filename = path_g_icons .. "thorium-ore-3.png",
            blend_mode = "additive",
            draw_as_light = true,
            tint = { r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            scale = 0.25,
            mipmap_count = 4
          },
        }
      }
    },
    subgroup = "raw-resource",
    order = "g[uranium-ore]-[thorium]",
    stack_size = 50
  }
})