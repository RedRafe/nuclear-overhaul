--[[
  Table: Capital cost for nuclear power plants
  +-------+---------+-----------+
  | Type  | US$/kWe | Resources |
  +-------+---------+-----------+
  | LWR   | 2400    + 500       |
  | HPWR  | 2000    + 420       |
  | LFTR  | 3400    + 700       |
  +-------+---------+-----------+
]]
local resources  = {500, 400, 200, 400}
local multiplier = {
  ['lwr']  = 1,
  ['phwr'] = 420 / 500,
  ['lftr'] = 700 / 500
}

data:extend({
  -- LWR
  {
    type = "recipe",
    name = "lw-reactor",
    energy_required = 300,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"concrete", resources[1] * multiplier["lwr"]},
      {"steel-plate", resources[2] * multiplier["lwr"]},
      {"advanced-circuit", resources[3] * multiplier["lwr"]},
      {"copper-plate", resources[4] * multiplier["lwr"]}
    },
    result = "lw-reactor",
    requester_paste_multiplier = 1
  },
  -- PHWR
  {
    type = "recipe",
    name = "phw-reactor",
    energy_required = 300,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"concrete", resources[1] * multiplier["phwr"]},
      {"steel-plate", resources[2] * multiplier["phwr"]},
      {"advanced-circuit", resources[3] * multiplier["phwr"]},
      {"copper-plate", resources[4] * multiplier["phwr"]}
    },
    result = "phw-reactor",
    requester_paste_multiplier = 1
  },
  -- LFTR
  {
    type = "recipe",
    name = "lft-reactor",
    energy_required = 300,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"concrete", resources[1] * multiplier["lftr"]},
      {"steel-plate", resources[2] * multiplier["lftr"]},
      {"advanced-circuit", resources[3] * multiplier["lftr"]},
      {"copper-plate", resources[4] * multiplier["lftr"]}
    },
    result = "lft-reactor",
    requester_paste_multiplier = 1
  }
})