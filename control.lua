local path_scripts = "__nuclear-overhaul__/runtime/"
local config = require(path_scripts .. "config")

---------------------------------------------------------------------------

local TICKS             = config.TICKS
local TICKS_PER_DAY     = config.TICKS_PER_DAY
local GT_RT             = config.GT_RT
local CONVERSION_FACTOR = config.CONVERSION_FACTOR
local probability       = config.PROBABILITY

---------------------------------------------------------------------------

local function initVariables(event)
  -- set days counter
	if global.days_since_last_failure == nil then
		global.days_since_last_failure = 0
	end
  if global.blown_up_reactors == nil then
		global.blown_up_reactors = 0
	end
end

local function increaseDay()
  global.days_since_last_failure = global.days_since_last_failure + 1
end

local function resetDay()
  global.days_since_last_failure = 0
end

local function increaseBlownUpReactors()
  global.blown_up_reactors = global.blown_up_reactors + 1
end

local function printStats()
  game.print({'alert.day-count', global.days_since_last_failure})
  if global.blown_up_reactors > 0 then
    game.print({'alert.reactor-count', global.blown_up_reactors})
  end
end

local function printDailyStats(event)
  -- print fancy stats
  if event.tick % TICKS_PER_DAY == 0 then
    printStats()
    increaseDay()
  end
end

local function reactorFailure(event)
  -- find reactors
  for _, surface in pairs(game.surfaces) do
    local reactors = surface.find_entities_filtered { type = "reactor" }
    for _, entity in pairs(reactors) do
      -- select active candidate reactors
      if entity.temperature >= 500 then
        -- compute its probability of failure
        if probability[entity.name] then
          local chances = math.random(probability[entity.name])
          if chances == 1 then
            local pos = entity.position
            -- kill entity (will trigger death effects)
            entity.die()
            -- print fancy info
            game.print({'alert.failure', pos.x, pos.y}, {r = 1, g = 0, b = 0})
            -- update global stats
            resetDay()
            increaseBlownUpReactors()
          end
        end
      end
    end
	end
end

---------------------------------------------------------------------------

commands.add_command("daily", "/daily", printStats)

script.on_init(initVariables)
script.on_load(initVariables)
script.on_nth_tick(TICKS, reactorFailure)
script.on_event(defines.events.on_tick, printDailyStats)
