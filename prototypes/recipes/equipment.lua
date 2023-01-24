nuclear.debug.log("--equipment")

data:extend({
  {
    type = "recipe",
    name = "battery-fluoride-th233-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"battery-mk2-equipment", 10},
      {"fluoride", 200},
      {"thorium-233", 50}
    },
    result = "battery-fluoride-th233-equipment"
  },
    {
    type = "recipe",
    name = "energy-shield-th232-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-mk2-equipment", 2},
      {"thorium-232", 20},
      {"accumulator", 40},
      {"copper-plate", 150}
    },
    result = "energy-shield-th232-equipment"
  },
  {
    type = "recipe",
    name = "exoskeleton-np237-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"exoskeleton-equipment", 4},
      {"electric-engine-unit", 50},
      {"steel-plate", 40},
      {"neptunium-237", 30}
    },
    result = "exoskeleton-np237-equipment"
  },
  {
    type = "recipe",
    name = "fusion-reactor-u236-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"fusion-reactor-equipment", 5},
      {"uranium-236", 200}
    },
    result = "fusion-reactor-u236-equipment"
  },
  {
    type = "recipe",
    name = "fusion-reactor-pu238-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"fusion-reactor-equipment", 5},
      {"plutonium-238", 500}
    },
    result = "fusion-reactor-pu238-equipment"
  },
  {
    type = "recipe",
    name = "night-vision-th232-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"night-vision-equipment", 4},
      {"processing-unit", 20},
      {"thorium-232", 20},
      {"fluoride", 100}
      
    },
    result = "night-vision-th232-equipment"
  },
  {
    type = "recipe",
    name = "personal-laser-defense-pa233-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"personal-laser-defense-equipment", 4},
      {"protactinium-233", 12},
      {"accumulator", 10}
    },
    result = "personal-laser-defense-pa233-equipment"
  },
  {
    type = "recipe",
    name = "personal-roboport-u236-equipment",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"personal-roboport-mk2-equipment", 4},
      {"uranium-236", 35},
      {"roboport", 5},
      {"substation", 10}
    },
    result = "personal-roboport-u236-equipment"
  },
})