nuclear.debug.log("--decay")

local HF = 100
local MF = 20
local LF = 2

data:extend({
  -- U-235 to Pa-234
  {
    type = "recipe",
    name = "u235-alpha-decay-pa234",
    energy_required = 994,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-235", LF}},
    icon = no_path_g_icons .. "u235-alpha-decay-pa234.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "a[c235]-[u235-alpha-decay-pa234]",
    results =
    {
      {
        name = "protactinium-234",
        probability = 0.98,
        amount = LF/2
      },
      {
        name = "uranium-235",
        probability = 0.02,
        amount = 1
      }
    }
  },
  -- Np-237 to Pa-233
  {
    type = "recipe",
    name = "np237-alpha-decay-pa233",
    energy_required = 827,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"neptunium-237", LF}},
    icon = no_path_g_icons .. "np237-alpha-decay-pa233.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "a[e237]-a[np237-alpha-decay-pa233]",
    results =
    {
      {
        name = "protactinium-233",
        probability = 0.97,
        amount = LF/2
      },
      {
        name = "neptunium-237",
        probability = 0.03,
        amount = 1
      }
    }
  },
  -- Np-237 to U-236
  {
    type = "recipe",
    name = "np237-alpha-decay-u236",
    energy_required = 207,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"neptunium-237", LF}},
    icon = no_path_g_icons .. "np237-alpha-decay-u236.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "a[e237]-b[np237-beta-decay-u236]",
    results =
    {
      {
        name = "uranium-236",
        probability = 0.97,
        amount = LF/2
      },
      {
        name = "neptunium-237",
        probability = 0.03,
        amount = 1
      }
    }
  },
  -- U-234 to Pa-233
  {
    type = "recipe",
    name = "u234-alpha-decay-pa233",
    energy_required = 764,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-234", LF}},
    icon = no_path_g_icons .. "u234-alpha-decay-pa233.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "a[c234]-[u234-alpha-decay-pa233]",
    results =
    {
      {
        name = "protactinium-233",
        probability = 0.95,
        amount = LF/2
      },
      {
        name = "uranium-234",
        probability = 0.05,
        amount = 1
      }
    }
  },
  -- U-237 to Np-237
  {
    type = "recipe",
    name = "u237-beta-decay-np237",
    energy_required = 291,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-237", LF}},
    icon = no_path_g_icons .. "u237-beta-decay-np237.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "b[c237]-[u237-beta-decay-np237]", 
    results =
    {
      {
        name = "neptunium-237",
        probability = 0.95,
        amount = LF/2
      },
      {
        name = "uranium-237",
        probability = 0.05,
        amount = 1
      }
    }
  },
  -- Pa-234 to U-234
  {
    type = "recipe",
    name = "pa234-beta-decay-u234",
    energy_required = 170,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"protactinium-234", LF}},
    icon = no_path_g_icons .. "pa234-beta-decay-u234.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "b[b234]-[pa234-beta-decay-u234]",
    results =
    {
      {
        name = "uranium-234",
        probability = 0.95,
        amount = LF/2
      },
      {
        name = "protactinium-234",
        probability = 0.05,
        amount = 1
      }
    }
  },
  -- Th-233 to Pa-233
  {
    type = "recipe",
    name = "th233-beta-decay-pa233",
    energy_required = 88,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"thorium-233", LF}},
    icon = no_path_g_icons .. "th233-beta-decay-pa233.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "b[a233]-[th233-beta-decay-pa233]",
    results =
    {
      {
        name = "protactinium-233",
        probability = 0.98,
        amount = LF/2
      },
      {
        name = "thorium-233",
        probability = 0.02,
        amount = 1
      }
    }
  },
  -- Pa-233 to U-233
  {
    type = "recipe",
    name = "pa233-beta-decay-u233",
    energy_required = 331,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"protactinium-233", LF}},
    icon = no_path_g_icons .. "pa233-beta-decay-u233.png",
    icon_size = 128, icon_mipmaps = 1,
    subgroup = "elements-decay",
    order = "b[b233]-[pa233-beta-decay-u233]",
    results =
    {
      {
        name = "uranium-233",
        probability = 0.96,
        amount = LF/2
      },
      {
        name = "protactinium-233",
        probability = 0.04,
        amount = 1
      }
    }
  }
})