local resource_autoplace = require("__core__/lualib/resource-autoplace")

-- Add Thorium ore
data:extend(
{	
	{
		type = "resource",
		name = "thorium-ore",
		icon = path_g_icons .. "thorium-ore.png",
		icon_size = 64,
		flags = {"placeable-neutral"},
		order="a-b-a",
		subgroup = "raw-resource",
		tree_removal_probability = 0,
		tree_removal_max_distance = 0,
		minable =
		{
			hardness = 2,
			mining_particle = "stone-particle",
			mining_time = 3,
			result = "thorium-ore"
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "thorium-ore",
			order = "d",
			base_density = 1.0,
			base_spots_per_km2 = 1.25,
			has_starting_area_placement = false,
			random_spot_size_minimum = 2,
			random_spot_size_maximum = 4,
			--regular_blob_amplitude_multiplier = 1,
			regular_rq_factor_multiplier = 1
			--candidate_spot_count = 22
		},
		stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = path_g_entities .. "thorium-ore/thorium-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = path_g_entities .. "thorium-ore/hr-thorium-ore.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
		stages_effect =
    {
      sheet =
      {
        filename = path_g_entities .. "thorium-ore/thorium-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        blend_mode = "additive",
        flags = {"light"},
        hr_version =
        {
          filename = path_g_entities .. "thorium-ore/hr-thorium-ore-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
      }
    },
		effect_animation_period = 5,
		effect_animation_period_deviation = 1,
		effect_darkness_multiplier = 3.6,
		min_effect_alpha = 0.2,
		max_effect_alpha = 0.3,
		mining_visualisation_tint = {r = 0.814, g = 1.000, b = 0.499, a = 1.000},
    map_color = {0.7, 0, 0.7}
	},
	{
		type = "autoplace-control",
		name = "thorium-ore",
		order="j-a",
		richness = true,
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "thorium-ore"
	}
})
