--[[
-- TICKS
  Default: 60 * 60
  Type: int [ticks^2]
  Description: Time interval between script updates. Defauly value is set to update once a minute.Increasing or 
  decreasing value will not affect reactors' failure probability.
-- TICKS per DAY
  Default: 25'000 (from Factorio wiki)
  Type: int [ticks]
  Description: duration of an in-game-day in Factorio expressed in ticks (also number of ticks in a Factorio Day).
  This value will affect the frequency of events: lower value -> more frequent, higher value -> less frequent
-- Game-Time / Real-Time RATIO
  Default: 60^3
  Type: int [ticks / day]
  Decription: Conversion ratio to emulate real time events during game. Default value is set to "1 hour GT = 1 year RT". 
  Higher values of GT_RT will make in-game-events much rare; lower values of GT_RT will make in-game-events much more 
  frequent.
-- Probability of REACTOR FAILURE: Prf
  Formula: 
        Prf(#years) = GT_RT   / (#years * TICKS * TICKS_PER_DAY) 
                    = 1       / (#years * CONVERSION_FACTOR)
  Description: Prf(#years) described the probability of the reactor failure eventngiven the expected number of years '#years' 
  that such reactor should live. Since we compute the probability of  Prf(#years) as the probability that a random number
  generated from 1 to 'N' has to be equal to 1, we're interested in the quantity 'N' that represents '#years * CONVERSION_FACTOR'
]]
local TICKS             = 60 * settings.global["update-interval"].value
local TICKS_PER_DAY     = settings.global["day-length"].value
local GT_RT             = 60 * 60 * 60
local CONVERSION_FACTOR = math.ceil(TICKS * TICKS_PER_DAY / GT_RT)

local probability = {
  ["lw-reactor"]      = CONVERSION_FACTOR * 50,   -- ~50 years
  ["phw-reactor"]     = CONVERSION_FACTOR * 30,   -- ~30 years
  ["lft-reactor"]     = CONVERSION_FACTOR * 100,  -- ~100 years
}

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

commands.add_command("daily", "/daily", printStats)

script.on_init(initVariables)
script.on_load(initVariables)
script.on_nth_tick(TICKS, reactorFailure)
script.on_event(defines.events.on_tick, printDayStats)
