nolib.debug.log('-- resource')

-- Disable mining fluids requirements for uranium mining
if data.raw.resource['uranium-ore'] then
  data.raw.resource['uranium-ore'].minable =
  {
    mining_particle = 'stone-particle',
    mining_time = 3.5, --2
    result = 'uranium-ore',
    --fluid_amount = 10,
    --required_fluid = 'sulfuric-acid'
  }
end