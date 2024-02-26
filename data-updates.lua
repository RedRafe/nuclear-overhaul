
-- ============================================================================

nolib.debug.log('-- -- Recipes')
require 'prototypes.recipes.ammo'

nolib.debug.log('-- -- Compatibility data-updates')
require 'compatibility.krastorio2.data-updates'

-- ============================================================================

if _DEBUG then 
  data.raw.tile['lab-dark-1'].variants.main[1].picture = no_path_g_icons .. 'mod-portal-tile.png'
  data.raw.tile['lab-dark-2'].variants.main[1].picture = no_path_g_icons .. 'mod-portal-tile.png'
  data.raw.tile['lab-dark-1'].map_color = {r=0, g=0, b=0}
end
