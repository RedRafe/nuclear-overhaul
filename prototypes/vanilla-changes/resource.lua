nuclear.debug.log("--resource")

-- Disable mining fluids requirements for uranium mining
local uo = data.raw["resource"]["uranium-ore"]
uo.minable =
  {
    mining_particle = "stone-particle",
    mining_time = 5, --2
    result = "uranium-ore"
    --fluid_amount = 10,
    --required_fluid = "sulfuric-acid"
  }