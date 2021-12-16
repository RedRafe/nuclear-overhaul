nuclear.debug.log("--item")

-- U-235
local u235 = data.raw["item"]["uranium-235"]
u235.subgroup = "elements"
u235.order = "92[uranium-235]"

-- U-238
local u238 = data.raw["item"]["uranium-238"]
u238.subgroup = "elements"
u238.order = "92[uranium-238]"

-- Steam turbine
data.raw.item["steam-turbine"].stack_size = 50

