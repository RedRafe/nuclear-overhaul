local GT_RT = 60 * 60 * 60

local function update_settings()
  global.TICKS             = 60 * (settings.global['update-interval'].value or 60)
  global.TICKS_PER_DAY     = settings.global['day-length'].value or 25000
  global.CONVERSION_FACTOR = math.ceil(global.TICKS * global.TICKS_PER_DAY / GT_RT)
  global.probability       = {
    ['lw-reactor']  = global.CONVERSION_FACTOR * 50,   -- ~50 years
    ['phw-reactor'] = global.CONVERSION_FACTOR * 30,   -- ~30 years
    ['lft-reactor'] = global.CONVERSION_FACTOR * 100,  -- ~100 years
  }
end

update_settings()
