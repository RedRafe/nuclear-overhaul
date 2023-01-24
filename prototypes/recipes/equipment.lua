data:extend({
  {
    type = "recipe",
    name = "battery-mk2-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"battery-equipment", 10},
      {"processing-unit", 15},
      {"low-density-structure", 5}
    },
    result = "battery-mk2-equipment"
  },
    {
    type = "recipe",
    name = "energy-shield-mk2-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-equipment", 10},
      {"processing-unit", 5},
      {"low-density-structure", 5}
    },
    result = "energy-shield-mk2-equipment"
  },
  {
    type = "recipe",
    name = "exoskeleton-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 10},
      {"electric-engine-unit", 30},
      {"steel-plate", 20}
    },
    result = "exoskeleton-equipment"
  },
  {
    type = "recipe",
    name = "fusion-reactor-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 200},
      {"low-density-structure", 50}
    },
    result = "fusion-reactor-equipment"
  },
})