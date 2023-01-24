nuclear.debug.log("--entity")

-- Heat pipe
data.raw["heat-pipe"]["heat-pipe"].max_health = 100
data.raw["heat-pipe"]["heat-pipe"].heat_buffer.specific_heat = "6MJ"
data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_transfer = "6GW"

-- Heat exchanger
data.raw["boiler"]["heat-exchanger"].max_health = 250
data.raw["boiler"]["heat-exchanger"].target_temperature = 415
data.raw["boiler"]["heat-exchanger"].energy_consumption = "50MW"
data.raw["boiler"]["heat-exchanger"].energy_source.specific_heat = "5MJ"
data.raw["boiler"]["heat-exchanger"].energy_source.max_transfer = "10GW"
data.raw["boiler"]["heat-exchanger"].energy_source.min_working_temperature = 415


-- Nerf solars
data.raw["solar-panel"]["solar-panel"].production = "6kW" -- 60kW
data.raw["accumulator"]["accumulator"].energy_source =
{
  type = "electric",
  buffer_capacity = "500kJ", -- 5MJ
  usage_priority = "tertiary",
  input_flow_limit = "30kW",
  output_flow_limit = "30kW"
}