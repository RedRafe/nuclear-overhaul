local radioactive_items = {
  'thorium-ore',
  'yellowcake',

  'thorium-232',
  'thorium-233',
  'protactinium-233',
  'protactinium-234',
  'uranium-233',
  'uranium-234',
  'uranium-236',
  'uranium-237',
  'neptunium-237',
  'plutonium-238',
  'plutonium-239',

  'plutonium-fuel',
  'thorium-fuel',

  'plutonium-mox',
  'thorium-mox',
  'uranium-mox',
  'used-plutonium-mox',
  'used-thorium-mox',
  'used-uranium-mox',
}

local function whitelist_radioactivity()
  if not (remote.interfaces['kr-radioactivity'] and remote.interfaces['kr-radioactivity']['add_entity'] and
      remote.interfaces['kr-radioactivity']['add_item']) then
    return
  end

  remote.call('kr-radioactivity', 'add_entity', 'thorium-ore')
  for _, name in pairs(radioactive_items) do
    remote.call('kr-radioactivity', 'add_item', name)
  end
end

-- =================================================================================================

local this = {}

this.on_init = whitelist_radioactivity
this.on_load = whitelist_radioactivity

return this
