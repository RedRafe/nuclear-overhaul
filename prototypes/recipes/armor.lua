nuclear.debug.log("--armor")

data:extend({
  {
    type = "recipe",
    name = "power-armor-pu238",
    enabled = false,
    energy_required = 25,
    ingredients = {
      {"effectivity-module-3", 25}, 
      {"speed-module-3", 25}, 
      {"productivity-module-3", 25}, 
      {"processing-unit", 100}, 
      {"electric-engine-unit", 50}, 
      {"low-density-structure", 50},
      {"plutonium-238", 200}
    },
    result = "power-armor-pu238",
    requester_paste_multiplier = 1
  },
})