data:extend({
  -- LW Reactor Reactor
  {
    type = "item",
    name = "lw-reactor",
    icon = path_g_icons .. "lw-reactor.png",
    icon_size = 64,
    icon_mipmaps = 1,
    flags = {},
    subgroup = "energy",
    order = "f[nuclear-energy]-e[reactor-a]",
    place_result = "lw-reactor",
    stack_size = 1
  },
  -- PHW Reactor
  {
    type = "item",
    name = "phw-reactor",
    icon = path_g_icons .. "phw-reactor.png",
    icon_size = 64,
    icon_mipmaps = 1,
    flags = {},
    subgroup = "energy",
    order = "f[nuclear-energy]-e[reactor-b]",
    place_result = "phw-reactor",
    stack_size = 1
  },
  -- LFT Reactor
  {
    type = "item",
    name = "lft-reactor",
    icon = path_g_icons .. "lft-reactor.png",
    icon_size = 64,
    icon_mipmaps = 1,
    flags = {},
    subgroup = "energy",
    order = "f[nuclear-energy]-e[reactor-c]",
    place_result = "lft-reactor",
    stack_size = 1
  }
})