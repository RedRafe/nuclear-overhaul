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
script.on_init(function()
  if remote.interfaces["kr-radioactivity"] 
    and remote.interfaces["kr-radioactivity"]["add_entity"]
    and remote.interfaces["kr-radioactivity"]["add_item"]
  then
    remote.call("kr-radioactivity", "add_entity", "thorium-ore" )
    remote.call("kr-radioactivity", "add_item", "neptunium-237")
    remote.call("kr-radioactivity", "add_item", "neptunium-237")
    remote.call("kr-radioactivity", "add_item", "plutonium-238")
    remote.call("kr-radioactivity", "add_item", "plutonium-239")
    remote.call("kr-radioactivity", "add_item", "plutonium-fuel")
    remote.call("kr-radioactivity", "add_item", "plutonium-mox")
    remote.call("kr-radioactivity", "add_item", "protactinium-233")
    remote.call("kr-radioactivity", "add_item", "protactinium-234")
    remote.call("kr-radioactivity", "add_item", "thorium-232")
    remote.call("kr-radioactivity", "add_item", "thorium-233")
    remote.call("kr-radioactivity", "add_item", "thorium-fuel")
    remote.call("kr-radioactivity", "add_item", "thorium-mox")
    remote.call("kr-radioactivity", "add_item", "thorium-ore")
    remote.call("kr-radioactivity", "add_item", "uranium-233")
    remote.call("kr-radioactivity", "add_item", "uranium-234")
    remote.call("kr-radioactivity", "add_item", "uranium-236")
    remote.call("kr-radioactivity", "add_item", "uranium-237")
    remote.call("kr-radioactivity", "add_item", "uranium-mox")
    remote.call("kr-radioactivity", "add_item", "used-plutonium-mox")
    remote.call("kr-radioactivity", "add_item", "used-thorium-mox")
    remote.call("kr-radioactivity", "add_item", "used-uranium-mox")
    remote.call("kr-radioactivity", "add_item", "yellowcake")
  end
end)

script.on_load(function()
  if remote.interfaces["kr-radioactivity"] 
    and remote.interfaces["kr-radioactivity"]["add_entity"]
    and remote.interfaces["kr-radioactivity"]["add_item"]
  then
    remote.call("kr-radioactivity", "add_entity", "thorium-ore" )
    remote.call("kr-radioactivity", "add_item", "neptunium-237")
    remote.call("kr-radioactivity", "add_item", "neptunium-237")
    remote.call("kr-radioactivity", "add_item", "plutonium-238")
    remote.call("kr-radioactivity", "add_item", "plutonium-239")
    remote.call("kr-radioactivity", "add_item", "plutonium-fuel")
    remote.call("kr-radioactivity", "add_item", "plutonium-mox")
    remote.call("kr-radioactivity", "add_item", "protactinium-233")
    remote.call("kr-radioactivity", "add_item", "protactinium-234")
    remote.call("kr-radioactivity", "add_item", "thorium-232")
    remote.call("kr-radioactivity", "add_item", "thorium-233")
    remote.call("kr-radioactivity", "add_item", "thorium-fuel")
    remote.call("kr-radioactivity", "add_item", "thorium-mox")
    remote.call("kr-radioactivity", "add_item", "thorium-ore")
    remote.call("kr-radioactivity", "add_item", "uranium-233")
    remote.call("kr-radioactivity", "add_item", "uranium-234")
    remote.call("kr-radioactivity", "add_item", "uranium-236")
    remote.call("kr-radioactivity", "add_item", "uranium-237")
    remote.call("kr-radioactivity", "add_item", "uranium-mox")
    remote.call("kr-radioactivity", "add_item", "used-plutonium-mox")
    remote.call("kr-radioactivity", "add_item", "used-thorium-mox")
    remote.call("kr-radioactivity", "add_item", "used-uranium-mox")
    remote.call("kr-radioactivity", "add_item", "yellowcake")
  end
end)
