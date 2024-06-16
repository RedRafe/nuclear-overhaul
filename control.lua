local handler = require '__core__.lualib.event_handler'

---@class ScriptLib
---@field add_commands? fun()
---@field add_remote_interface? fun()
---@field on_init? fun()
---@field on_load? fun()
---@field on_configuration_changed? fun(d: ConfigurationChangedData)
---@field events? table<defines.events, fun(d: EventData)>
---@field on_nth_tick? table<integer, fun(d: NthTickEventData)>

handler.add_libraries{
  require 'scripts.reactor-failure',
}

-- Add support for K2 radioactivity
local radioactive_entities = { "thorium-ore" }
local radioactive_items = {
  "neptunium-237",
  "plutonium-238",
  "plutonium-239",
  "plutonium-fuel",
  "plutonium-mox",
  "protactinium-233",
  "protactinium-234",
  "thorium-232",
  "thorium-233",
  "thorium-fuel",
  "thorium-mox",
  "thorium-ore",
  "uranium-233",
  "uranium-234",
  "uranium-236",
  "uranium-237",
  "uranium-mox",
  "used-plutonium-mox",
  "used-thorium-mox",
  "used-uranium-mox",
  "yellowcake"
}

script.on_init(function()
  if remote.interfaces["kr-radioactivity"] 
    and remote.interfaces["kr-radioactivity"]["add_entity"]
    and remote.interfaces["kr-radioactivity"]["add_item"]
  then
    for i, name in ipairs(radioactive_entities) do
      remote.call("kr-radioactivity", "add_entity", name )
    end
    for i, name in ipairs(radioactive_items) do
      remote.call("kr-radioactivity", "add_item", name )
    end
  end
end)

script.on_load(function()
  if remote.interfaces["kr-radioactivity"] 
    and remote.interfaces["kr-radioactivity"]["add_entity"]
    and remote.interfaces["kr-radioactivity"]["add_item"]
  then
    for i, name in ipairs(radioactive_entities) do
      remote.call("kr-radioactivity", "add_entity", name )
    end
    for i, name in ipairs(radioactive_items) do
      remote.call("kr-radioactivity", "add_item", name )
    end
  end
end)
