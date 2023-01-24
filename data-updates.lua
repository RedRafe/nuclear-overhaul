nuclear.debug.log("-- --updates")
---------------------------------------------------------------------------

require(no_path_compatibility_scripts .. "Krastorio2/data-updates")

---------------------------------------------------------------------------

if nuclear.debug.state then 
  data.raw.tile["lab-dark-1"].variants.main[1].picture = no_path_g_icons .. "mod-portal-tile.png"
  data.raw.tile["lab-dark-2"].variants.main[1].picture = no_path_g_icons .. "mod-portal-tile.png"
  data.raw.tile["lab-dark-1"].map_color = {r=0, g=0, b=0}
end