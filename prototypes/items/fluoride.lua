nuclear.debug.log("--fluoride")


-- Fluoride
data:extend({
  {
  type = "item",
  name = "fluoride",
  icon = no_path_g_icons .. "fluoride.png",
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "raw-material",
  order = "g[thorium-fluoride]",
  stack_size = 50
  }
})