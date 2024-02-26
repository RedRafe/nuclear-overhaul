nolib.debug.log('-- entity')


nolib.update_prototypes({
  -- Heat pipe
  {
    name = 'heat-pipe',
    type = 'heat-pipe',
    max_health = 100,
    heat_buffer = {
      specific_heat = '6MJ',
      max_transfer = '6GW'
    }
  },
  -- Heat exchanger
  {
    name = 'heat-exchanger',
    type = 'boiler',
    max_health = 250,
    target_temperature = 415,
    energy_consumption = '20MW', --50MW * 0.4
    energy_source = {
      specific_heat = '5MJ',
      max_transfer = '10GW',
      min_working_temperature = 415,
    }
  },
})