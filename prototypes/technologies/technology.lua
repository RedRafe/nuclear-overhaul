nuclear.debug.log("--technology")

data:extend({
  -- Fluoride processing
  {
    type = "technology",
    name = "fluoride-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = path_g_technologies .. "fluoride-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fluoride"
      }
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30,
      count = 150
    },
    order = "e-p-b-c"
  },
  -- Uranium Processing 2
  {
    type = "technology",
    name = "uranium-processing-2",
    icon_size = 256, icon_mipmaps = 1,
    icon = path_g_technologies .. "uranium-processing-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-processing-2"
      }
    },
    prerequisites = {"uranium-processing", "concrete"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60,
      count = 200
    },
    order = "e-p-b-c"
  },
  -- Alpha decay
  {
    type = "technology",
    name = "alpha-decay",
    icon_size = 256, icon_mipmaps = 1,
    icon = path_g_technologies .. "alpha.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "u235-alpha-decay-pa234"
      },
      {
        type = "unlock-recipe",
        recipe = "np237-alpha-decay-u236"
      },
      {
        type = "unlock-recipe",
        recipe = "u234-alpha-decay-pa233"
      },
      {
        type = "unlock-recipe",
        recipe = "np237-alpha-decay-pa233"
      }
    },
    prerequisites = {"kovarex-enrichment-process"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60,
      count = 1500
    },
    order = "e-p-b-c"
  },
  -- Beta decay
  {
    type = "technology",
    name = "beta-decay",
    icon_size = 256, icon_mipmaps = 1,
    icon = path_g_technologies .. "beta.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "u237-beta-decay-np237"
      },
      {
        type = "unlock-recipe",
        recipe = "pa234-beta-decay-u234"
      },
      {
        type = "unlock-recipe",
        recipe = "th233-beta-decay-pa233"
      },
      {
        type = "unlock-recipe",
        recipe = "pa233-beta-decay-u233"
      }
    },
    prerequisites = {"kovarex-enrichment-process"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60,
      count = 1500
    },
    order = "e-p-b-c"
  },
  -- Thorium processing
  {
    type = "technology",
    name = "thorium-processing",
    icon_size = 256, icon_mipmaps = 4,
    icon = path_g_technologies .. "thorium-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "thorium-processing"
      }
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30,
      count = 1500
    },
    order = "e-p-b-c"
  },
  -- Thorium enrichment process
  {
    type = "technology",
    name = "thorium-enrichment-process",
    icon_size = 256, icon_mipmaps = 4,
    icon = path_g_technologies .. "thorium-enrichment-process.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "thorium-enrichment-process"
      }
    },
    prerequisites = {"kovarex-enrichment-process"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 45,
      count = 1500
    },
    order = "e-p-b-c",
    enabled = false --TODO: enable tech
  },
  -- LWR Power
  {
    type = "technology",
    name = "advanced-nuclear-power",
    icon_size = 256, icon_mipmaps = 1,
    icon = path_g_technologies .. "lwr.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lw-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-mox"
      }
    },
    prerequisites = {"nuclear-power", "uranium-processing-2"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 60,
      count = 800
    },
    order = "e-p-b-c"
  },
  -- PHWR Power
  {
    type = "technology",
    name = "advanced-nuclear-power-2",
    icon_size = 256, icon_mipmaps = 1,
    icon = path_g_technologies .. "phwr.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "phw-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "plutonium-mox"
      }
    },
    prerequisites = {"advanced-nuclear-power", "alpha-decay", "beta-decay"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60,
      count = 2000
    },
    order = "e-p-b-c"
  },
  -- LFTR Power
  {
    type = "technology",
    name = "advanced-nuclear-power-3",
    icon_size = 256, icon_mipmaps = 1,
    icon = path_g_technologies .. "lftr.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lft-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "thorium-mox"
      }
    },
    prerequisites = {"advanced-nuclear-power-2", "thorium-processing", "fluoride-processing"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60,
      count = 2500
    },
    order = "e-p-b-c"
  },
  -- Nuclear fuel reprocessing 1
  {
    type = "technology",
    name = "nuclear-fuel-reprocessing-1",
    icon_size = 256, icon_mipmaps = 4,
    icon = path_g_technologies .. "nuclear-fuel-reprocessing-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-mox-reprocessing"
      }
    },
    prerequisites = {"advanced-nuclear-power"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30,
      count = 50
    },
    order = "e-p-b-c"
  },
  -- Nuclear fuel reprocessing 2
  {
    type = "technology",
    name = "nuclear-fuel-reprocessing-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = path_g_technologies .. "nuclear-fuel-reprocessing-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "plutonium-mox-reprocessing"
      }
    },
    prerequisites = {"advanced-nuclear-power-2"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30,
      count = 50
    },
    order = "e-p-b-c"
  },
  -- Nuclear fuel reprocessing 3
  {
    type = "technology",
    name = "nuclear-fuel-reprocessing-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = path_g_technologies .. "nuclear-fuel-reprocessing-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "thorium-mox-reprocessing"
      }
    },
    prerequisites = {"advanced-nuclear-power-3"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30,
      count = 50
    },
    order = "e-p-b-c"
  }
})