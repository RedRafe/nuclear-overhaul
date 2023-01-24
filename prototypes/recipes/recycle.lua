nuclear.debug.log("--recycle")

data:extend({
  -- Recycle used Uranium MOX
  {
    type = "recipe",
    name = "uranium-mox-reprocessing",
    energy_required = 20, --120
    enabled = false,
    category = "centrifuging",
    ingredients = {{"used-uranium-mox", 1}},
    icon = no_path_g_icons .. "nuclear-fuel-reprocessing-1.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "f[reprocessing]-a[rep-uranium-mox]",
    results =
    {
      {
        name = "uranium-235",
        amount = 2
      },
      {
        name = "uranium-237",
        amount = 5
      },
      {
        name = "uranium-238",
        amount = 88
      },
      {
        name = "plutonium-238",
        probability = 0.35,
        amount = 1
      },
      {
        name = "plutonium-239",
        probability = 0.65,
        amount = 1
      }
    }
  },
  -- Recycle used Plutonium MOX
  {
    type = "recipe",
    name = "plutonium-mox-reprocessing",
    energy_required = 40, --240
    enabled = false,
    category = "centrifuging",
    ingredients = {{"used-plutonium-mox", 1}},
    icon = no_path_g_icons .. "nuclear-fuel-reprocessing-2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "f[reprocessing]-b[rep-plutonium-mox]",
    results =
    {
      {
        name = "uranium-237",
        amount = 5
      },
      {
        name = "uranium-238",
        amount = 88
      },
      {
        name = "plutonium-238",
        probability = 0.45,
        amount = 5
      },
      {
        name = "plutonium-239",
        probability = 0.55,
        amount = 5
      }
    }
  },
  -- Recycle used LFTR MOX
  {
    type = "recipe",
    name = "thorium-mox-reprocessing",
    energy_required = 10, --60
    enabled = false,
    category = "centrifuging",
    ingredients = {{"used-thorium-mox", 1}},
    icon = no_path_g_icons .. "nuclear-fuel-reprocessing-3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "f[reprocessing]-c[rep-thorium-mox]",
    results =
    {
      {
        name = "neptunium-237",
        amount = 2
      },
      {
        name = "plutonium-238",
        amount = 18
      }
    }
  }
})