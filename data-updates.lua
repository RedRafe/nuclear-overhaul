nuclear.debug.log("-- --updates")
---------------------------------------------------------------------------

require(no_path_compatibility_scripts .. "Krastorio2/data-updates")

---------------------------------------------------------------------------

if nuclear.debug.state then 
  data.raw.tile["lab-dark-1"].variants.main[1].picture = no_path_g_icons .. "mod-portal-tile.png"
  data.raw.tile["lab-dark-2"].variants.main[1].picture = no_path_g_icons .. "mod-portal-tile.png"
  data.raw.tile["lab-dark-1"].map_color = {r=0, g=0, b=0}
end


--[[
-- nerf solars and accumulators (no need anymore)
local msv = require(no_path_lib .. "utils").multiplyStringValue
local nerf = 1 -- /10 of production values

for ___, solar in pairs(data.raw["solar-panel"]) do
  solar.production = msv(solar.production, nerf)
end

for ___, accu in pairs(data.raw["accumulator"]) do
  accu.energy_source = {
    type = "electric",
    buffer_capacity = msv(accu.energy_source.buffer_capacity, nerf),
    usage_priority = "tertiary",
    input_flow_limit = msv(accu.energy_source.input_flow_limit, nerf),
    output_flow_limit = msv(accu.energy_source.output_flow_limit, nerf)
  }
end
]]