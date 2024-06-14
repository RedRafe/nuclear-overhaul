nolib.debug.log('-- fluoride')

-- Fluoride
data:extend({
  {
  type = 'item',
  name = 'fluoride',
  icon = no_path_g_icons .. 'material-crystal-fluorite-2.png',
  icon_size = 64, icon_mipmaps = 4,
  subgroup = 'raw-material',
  order = 'g[thorium-fluoride]',
  stack_size = 50,
  pictures = {
    { filename = no_path_g_icons .. 'material-crystal-fluorite-1.png', size = 64, scale =0.25, mipmap_count = 4 },
    { filename = no_path_g_icons .. 'material-crystal-fluorite-2.png', size = 64, scale =0.25, mipmap_count = 4 },
    { filename = no_path_g_icons .. 'material-crystal-fluorite-3.png', size = 64, scale =0.25, mipmap_count = 4 },
    { filename = no_path_g_icons .. 'material-crystal-fluorite-4.png', size = 64, scale =0.25, mipmap_count = 4 },
  }
  }
})