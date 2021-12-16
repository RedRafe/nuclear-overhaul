nuclear.debug.log("--fuel")

data:extend({
  -- Uranium MOX
  {
    type = "recipe",
    name = "uranium-mox",
    energy_required = 10, -- 60
    enabled = false,
    category = "centrifuging",
    ingredients =
    {
      {"iron-plate", 1},
      {"uranium-235", 4},
      {"uranium-238", 96}
    },
    result = "uranium-mox",
    result_count = 1
  },
  -- Plutonium MOX
  {
    type = "recipe",
    name = "plutonium-mox",
    energy_required = 15, -- 60
    enabled = false,
    category = "centrifuging",
    ingredients =
    {
      {"iron-plate", 1},
      {"uranium-238", 93},
      {"plutonium-238", 5},
      {"plutonium-239", 2}
    },
    result = "plutonium-mox",
    result_count = 1
  },
  -- Thorium MOX
  {
    type = "recipe",
    name = "thorium-mox",
    energy_required = 20, -- 60
    enabled = false,
    category = "centrifuging",
    ingredients =
    {
      {"iron-plate", 1},
      {"uranium-233", 1},
      {"plutonium-239", 5},
      {"thorium-232", 77},
      {"fluoride", 20}
    },
    result = "thorium-mox",
    result_count = 1
  }
})