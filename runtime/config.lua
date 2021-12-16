local config = {}

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

---------------------------------------------------------------------------

config.TICKS             = TICKS
config.TICKS_PER_DAY     = TICKS_PER_DAY
config.GT_RT             = GT_RT
config.CONVERSION_FACTOR = CONVERSION_FACTOR
config.PROBABILITY       = probability

return config