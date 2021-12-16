nuclear.debug.log("--reactor")

--[[
    Table:  reactor values and comparison
    +-------+-----------+-----------+-----------+-----------+-----------+
    | Type  | size(MW)  | effic.(%) | output(MW)| fuel(GW)  | time(s)   |
    +-------+-----------+-----------+-----------+-----------+-----------+
    | LWR   | 1000      | 30        | 300       | 19.2      | 18        |
    | PHWR  | 500       | 35        | 175       | 25.9      | 42        |
    | LFTR  | 600       | 45        | 270       | 38.4      | 68        |
    +-------+-----------+-----------+-----------+-----------+-----------+
]]

--FIXME: phw-reactor heated pipes not rendering correctly (just visual bug)
--require "util"
local entities = {}
local heated_pipes_tint = {0.5, 0.4, 0.3, 0.5}
local heat_glow_tint = {1, 1, 1, 1}

apply_heat_pipe_glow = function(layer)
    layer.tint = heated_pipes_tint
    if layer.hr_version then
        layer.hr_version.tint = heated_pipes_tint
    end
    local light_layer = util.copy(layer)
    light_layer.draw_as_light = true
    light_layer.tint = heat_glow_tint
    if light_layer.hr_version then
        light_layer.hr_version.draw_as_light = true
        light_layer.hr_version.tint = heat_glow_tint
    end
    return
    {
        layers =
        {
            layer,
            light_layer
        }
    }
end

function make_heat_pipe_pictures(path, name_prefix, data, draw_as_glow)
    local all_pictures = {}
    local func = draw_as_glow and apply_heat_pipe_glow or function(t) return t end
    for key, t in pairs(data) do
      if t.empty then
        all_pictures[key] = { priority = "extra-high", filename = "__core__/graphics/empty.png", width = 1, height = 1 }
      else
        local tile_pictures = {}
        for i = 1, (t.variations or 1) do
          local sprite = func
          {
            priority = "extra-high",
            filename = path .. name_prefix .. "-" .. (t.name or string.gsub(key, "_", "-")) .. (t.ommit_number and ".png" or ("-" .. tostring(i) .. ".png")),
            width = (t.width or 32),
            height = (t.height or 32),
            shift = t.shift,
            hr_version =
            {
              priority = "extra-high",
              filename = path .. "hr-" .. name_prefix .. "-" .. (t.name or string.gsub(key, "_", "-")) .. (t.ommit_number and ".png" or ("-" .. tostring(i) .. ".png")),
              width = (t.width or 32) * 2,
              height = (t.height or 32) * 2,
              scale = 0.5,
              shift = t.shift
            }
          }
          table.insert(tile_pictures, sprite)
        end
        all_pictures[key] = tile_pictures
      end
    end
    return all_pictures
end

local base_reactor = util.table.deepcopy(data.raw["reactor"]["nuclear-reactor"])

---------------------------------------------------------------------------
-- -- LWR - Light Water Reactor (normal size, slower)
---------------------------------------------------------------------------
data:extend({
  {
    type = "reactor",
    name = "lw-reactor",
    icon  = path_g_icons .. "lw-reactor.png",
    icon_size = 64, icon_mipmaps = 1,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "lw-reactor"},
    max_health = 500, -- 500 MW
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "300MW", -- 40 MW
    neighbour_bonus = 0, -- 1 disabled
    energy_source =
    {
      type = "burner",
      fuel_category = "uranium-mix",
      effectivity = 0.3, -- 1 
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    },
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    damaged_trigger_effect = base_reactor.damaged_trigger_effect,

    lower_layer_picture =
    {
      filename = path_g_entities .. "lw-reactor/reactor-pipes.png",
      width = 156,
      height = 156,
      shift = util.by_pixel(-2, -4),
      hr_version =
      {
        filename = path_g_entities .. "lw-reactor/hr-reactor-pipes.png",
        width = 320,
        height = 316,
        scale = 0.5,
        shift = util.by_pixel(-1, -5)
      }
    },
    heat_lower_layer_picture = apply_heat_pipe_glow
    {
      filename = path_g_entities .. "lw-reactor/reactor-pipes-heated.png",
      width = 156,
      height = 156,
      shift = util.by_pixel(-3, -4),
      hr_version =
      {
        filename = path_g_entities .. "lw-reactor/hr-reactor-pipes-heated.png",
        width = 320,
        height = 316,
        scale = 0.5,
        shift = util.by_pixel(-0.5, -4.5)
      }
    },

    picture =
    {
      layers =
      {
        {
          filename = path_g_entities .. "lw-reactor/reactor.png",
          width = 154,
          height = 158,
          shift = util.by_pixel(-6, -6),
          hr_version =
          {
            filename = path_g_entities .. "lw-reactor/hr-reactor.png",
            width = 302,
            height = 318,
            scale = 0.5,
            shift = util.by_pixel(-5, -7)
          }
        },
        {
          filename = path_g_entities .. "lw-reactor/reactor-shadow.png",
          width = 263,
          height = 162,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = path_g_entities .. "lw-reactor/hr-reactor-shadow.png",
            width = 525,
            height = 323,
            scale = 0.5,
            shift = { 1.625, 0 },
            draw_as_shadow = true
          }
        }
      }
    },

    working_light_picture =
    {
      filename = path_g_entities .. "lw-reactor/reactor-lights-color.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 160,
      height = 160,
      shift = { -0.03125, -0.1875 },
      hr_version =
      {
        filename = path_g_entities .. "lw-reactor/hr-reactor-lights-color.png",
        blend_mode = "additive",
        draw_as_glow = true,
        width = 320,
        height = 320,
        scale = 0.5,
        shift = { -0.03125, -0.1875 },
      }
    },

    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "50MJ",
      max_transfer = "50GW",
      minimum_glow_temperature = 350,
      connections =
      {
        {
          position = {-2, -2},
          direction = defines.direction.north
        },
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.east
        },
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.south
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.west
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        },
        {
          position = {-2, -2},
          direction = defines.direction.west
        }
      },

      heat_picture = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "lw-reactor/reactor-heated.png",
        width = 108,
        height = 128,
        shift = util.by_pixel(1, -7),
        hr_version =
        {
          filename = path_g_entities .. "lw-reactor/hr-reactor-heated.png",
          width = 216,
          height = 256,
          scale = 0.5,
          shift = util.by_pixel(3, -6.5)
        }
      },
    },

    connection_patches_connected =
    {
      sheet =
      {
        filename = path_g_entities .. "lw-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = path_g_entities .. "lw-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = path_g_entities .. "lw-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = path_g_entities .. "lw-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_connected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "lw-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = path_g_entities .. "lw-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_disconnected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "lw-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = path_g_entities .. "lw-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    vehicle_impact_sound = base_reactor.vehicle_impact_sound,
    open_sound = base_reactor.open_sound,
    close_sound = base_reactor.close_sound,
    working_sound = base_reactor.working_sound,
    meltdown_action = base_reactor.meltdown_action
  }
})

---------------------------------------------------------------------------
-- --  PHWR - Pressurized Heavy Water Reactor (smaller, but powerful)
---------------------------------------------------------------------------
data:extend({
  {
    type = "reactor",
    name = "phw-reactor",
    icon  = path_g_icons .. "phw-reactor.png",
    icon_size = 64, icon_mipmaps = 1,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "phw-reactor"},
    max_health = 400,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "175MW",
    neighbour_bonus = 0, -- disabled
    energy_source =
    {
      type = "burner",
      fuel_category = "plutonium-mix",
      effectivity = 0.35,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = base_reactor.damaged_trigger_effect,

    lower_layer_picture =
    {
      filename = path_g_entities .. "phw-reactor/reactor-pipes.png",
      width = 94,
      height = 94,
      --scale = 0.6,
      shift = util.by_pixel(-2, -4),
      hr_version =
      {
        filename = path_g_entities .. "phw-reactor/hr-reactor-pipes.png",
        width = 190,
        height = 190,
        scale = 0.5, --0.3
        shift = util.by_pixel(-1, -5)
      }
    },
    heat_lower_layer_picture = apply_heat_pipe_glow
    {
      filename = path_g_entities .. "phw-reactor/reactor-pipes-heated.png",
      width = 94,
      height = 94,
      --scale = 0.6,
      shift = util.by_pixel(-3, -4),
      hr_version =
      {
        filename = path_g_entities .. "phw-reactor/hr-reactor-pipes-heated.png",
        width = 190,
        height = 190,
        scale = 0.5, --0.3
        shift = util.by_pixel(-0.5, -4.5)
      }
    },

    picture =
    {
      layers =
      {
        {
          filename = path_g_entities .. "phw-reactor/reactor.png",
          width = 154,
          height = 158,
          scale = 0.6,
          shift = util.by_pixel(-6, -6),
          hr_version =
          {
            filename = path_g_entities .. "phw-reactor/hr-reactor.png",
            width = 302,
            height = 318,
            scale = 0.3,
            shift = util.by_pixel(-5, -7)
          }
        },
        {
          filename = path_g_entities .. "phw-reactor/reactor-shadow.png",
          width = 263,
          height = 162,
          scale = 0.6,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = path_g_entities .. "phw-reactor/hr-reactor-shadow.png",
            width = 525,
            height = 323,
            scale = 0.3,
            shift = { 1.625, 0 },
            draw_as_shadow = true
          }
        }
      }
    },

    working_light_picture =
    {
      filename = path_g_entities .. "phw-reactor/reactor-lights-color.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 160,
      height = 160,
      scale = 0.6,
      shift = { -0.03125, -0.1875 },
      hr_version =
      {
        filename = path_g_entities .. "phw-reactor/hr-reactor-lights-color.png",
        blend_mode = "additive",
        draw_as_glow = true,
        width = 320,
        height = 320,
        scale = 0.3,
        shift = { -0.03125, -0.1875 },
      }
    },

    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "15MJ",
      max_transfer = "50GW",
      minimum_glow_temperature = 350,
      connections =
      {
        {
          position = {-1, -1},
          direction = defines.direction.north
        },
        {
          position = {1, -1},
          direction = defines.direction.north
        },
        {
          position = {1, -1},
          direction = defines.direction.east
        },
        {
          position = {1, 1},
          direction = defines.direction.east
        },
        {
          position = {1, 1},
          direction = defines.direction.south
        },
        {
          position = {-1, 1},
          direction = defines.direction.south
        },
        {
          position = {-1, 1},
          direction = defines.direction.west
        },
        {
          position = {-1, -1},
          direction = defines.direction.west
        }
      },

      heat_picture = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "phw-reactor/reactor-heated.png",
        width = 108,
        height = 128,
        scale = 0.6,
        shift = util.by_pixel(-2, -7), --util.by_pixel(1, -7)
        hr_version =
        {
          filename = path_g_entities .. "phw-reactor/hr-reactor-heated.png",
          width = 216,
          height = 256,
          scale = 0.3,
          shift = util.by_pixel(3, -6.5)
        }
      },
    },

    connection_patches_connected =
    {
      sheet =
      {
        filename = path_g_entities .. "phw-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        --scale = 0.6,
        hr_version =
        {
          filename = path_g_entities .. "phw-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = path_g_entities .. "phw-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        --scale = 0.6,
        hr_version =
        {
          filename = path_g_entities .. "phw-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_connected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "phw-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        --scale = 0.6,
        hr_version =
        {
          filename = path_g_entities .. "phw-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_disconnected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "phw-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        --scale = 0.6,
        hr_version =
        {
          filename = path_g_entities .. "phw-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    vehicle_impact_sound = base_reactor.vehicle_impact_sound,
    open_sound = base_reactor.open_sound,
    close_sound = base_reactor.close_sound,
    working_sound = base_reactor.working_sound,
    meltdown_action = base_reactor.meltdown_action
  }
})

---------------------------------------------------------------------------
-- -- LFTR 'Liquid Fluoride Thorium Reactor' (more efficient)
---------------------------------------------------------------------------
data:extend({
  {
    type = "reactor",
    name = "lft-reactor",
    icon  = path_g_icons .. "lft-reactor.png",
    icon_size = 64, icon_mipmaps = 1,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "lft-reactor"},
    max_health = 600,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "270MW",
    neighbour_bonus = 0, -- disabled
    energy_source =
    {
      type = "burner",
      fuel_category = "thorium-mix",
      effectivity = 0.45,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    },
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    damaged_trigger_effect = base_reactor.damaged_trigger_effect,

    lower_layer_picture =
    {
      filename = path_g_entities .. "lft-reactor/reactor-pipes.png",
      width = 156,
      height = 156,
      shift = util.by_pixel(-2, -4),
      hr_version =
      {
        filename = path_g_entities .. "lft-reactor/hr-reactor-pipes.png",
        width = 320,
        height = 316,
        scale = 0.5,
        shift = util.by_pixel(-1, -5)
      }
    },
    heat_lower_layer_picture = apply_heat_pipe_glow
    {
      filename = path_g_entities .. "lft-reactor/reactor-pipes-heated.png",
      width = 156,
      height = 156,
      shift = util.by_pixel(-3, -4),
      hr_version =
      {
        filename = path_g_entities .. "lft-reactor/hr-reactor-pipes-heated.png",
        width = 320,
        height = 316,
        scale = 0.5,
        shift = util.by_pixel(-0.5, -4.5)
      }
    },

    picture =
    {
      layers =
      {
        {
          filename = path_g_entities .. "lft-reactor/reactor.png",
          width = 154,
          height = 158,
          shift = util.by_pixel(-6, -6),
          hr_version =
          {
            filename = path_g_entities .. "lft-reactor/hr-reactor.png",
            width = 302,
            height = 318,
            scale = 0.5,
            shift = util.by_pixel(-5, -7)
          }
        },
        {
          filename = path_g_entities .. "lft-reactor/reactor-shadow.png",
          width = 263,
          height = 162,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = path_g_entities .. "lft-reactor/hr-reactor-shadow.png",
            width = 525,
            height = 323,
            scale = 0.5,
            shift = { 1.625, 0 },
            draw_as_shadow = true
          }
        }
      }
    },

    working_light_picture =
    {
      filename = path_g_entities .. "lft-reactor/reactor-lights-color.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 160,
      height = 160,
      shift = { -0.03125, -0.1875 },
      hr_version =
      {
        filename = path_g_entities .. "lft-reactor/hr-reactor-lights-color.png",
        blend_mode = "additive",
        draw_as_glow = true,
        width = 320,
        height = 320,
        scale = 0.5,
        shift = { -0.03125, -0.1875 },
      }
    },

    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "50MJ",
      max_transfer = "50GW",
      minimum_glow_temperature = 350,
      connections =
      {
        {
          position = {-2, -2},
          direction = defines.direction.north
        },
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.east
        },
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.south
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.west
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        },
        {
          position = {-2, -2},
          direction = defines.direction.west
        }
      },

      heat_picture = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "lft-reactor/reactor-heated.png",
        width = 108,
        height = 128,
        shift = util.by_pixel(1, -7),
        hr_version =
        {
          filename = path_g_entities .. "lft-reactor/hr-reactor-heated.png",
          width = 216,
          height = 256,
          scale = 0.5,
          shift = util.by_pixel(3, -6.5)
        }
      },
    },

    connection_patches_connected =
    {
      sheet =
      {
        filename = path_g_entities .. "lft-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = path_g_entities .. "lft-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = path_g_entities .. "lft-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = path_g_entities .. "lft-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_connected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "lft-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = path_g_entities .. "lft-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_disconnected =
    {
      sheet = apply_heat_pipe_glow
      {
        filename = path_g_entities .. "lft-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = path_g_entities .. "lft-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    vehicle_impact_sound = base_reactor.vehicle_impact_sound,
    open_sound = base_reactor.open_sound,
    close_sound = base_reactor.close_sound,
    working_sound = base_reactor.working_sound,
    meltdown_action = base_reactor.meltdown_action
  }
})