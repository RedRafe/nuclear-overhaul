nolib.debug.log('-- yellowcake')

-- Yellowcake
data:extend({
  {
		type = 'item',
		name = 'yellowcake',
		icon = no_path_g_icons .. 'pile-chunk-yellowcake-4.png',
		icon_size = 64,
		icon_mipmaps = 4,
		pictures =
		{
			{ scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'pile-chunk-yellowcake-5.png' },
			{ scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'pile-chunk-yellowcake-6.png' },
			{ scale = 0.25, size = 64, mipmap_count = 4, filename = no_path_g_icons .. 'pile-chunk-yellowcake-7.png' },
			
		},
		subgroup = 'raw-material',
		order = 'g[uranium-powder]',
		stack_size = 100
  }
})
