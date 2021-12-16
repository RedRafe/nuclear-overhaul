nuclear.debug.log("--enrichment")

-- Thorium enrichment process (not enabled)
data:extend({
  {
    type = "recipe",
    name = "thorium-enrichment-process",
    energy_required = 60,
    enabled = false,
    category = "centrifuging",
    ingredients = {
      {"thorium-232", 40}, 
      {"thorium-233", 5}
    },
    icon = path_g_icons .. "thorium-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "radioactive-products",
    order = "b[enrichment]-b[thorium-enrichment]",
    main_product = "",
    results = {
      {"thorium-232", 41},
      {"thorium-233", 2}
    },
    allow_decomposition = false
  }
})