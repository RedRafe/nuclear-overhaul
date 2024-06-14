nolib.debug.log('-- thorium')

-- Thorium ore
data:extend({
  {
    type = 'item',
    name = 'thorium-ore',
    icon =  no_path_g_icons .. 'ore-crystal-cinnabar-1.png',
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'ore-crystal-cinnabar-1.png' },
      { scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'ore-crystal-cinnabar-2.png' },
      { scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'ore-crystal-cinnabar-3.png' },
      { scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'ore-crystal-cinnabar-4.png' },
      { scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'ore-crystal-cinnabar-5.png' },
    },
    subgroup = 'raw-resource',
    order = 'g[uranium-ore]-[thorium]',
    stack_size = 50
  }
})