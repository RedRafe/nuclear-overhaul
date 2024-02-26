nolib.debug.log('-- armor')

data:extend({
  {
    type = 'armor',
    name = 'power-armor-pu238',
    icon = no_path_g_icons .. 'power-armor-pu238.png',
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      { type = 'physical',  decrease = 15, percent = 55 },
      { type = 'acid',      decrease =  0, percent = 75 },
      { type = 'explosion', decrease = 80, percent = 80 },
      { type = 'fire',      decrease =  0, percent = 85 },
    },
    subgroup = 'armor',
    order = 'e[power-armor-pu238]',
    stack_size = 1,
    infinite = true,
    equipment_grid = 'no-equipment-grid-1',
    inventory_size_bonus = 40,
    open_sound = {filename =  '__base__/sound/armor-open.ogg', volume = 1 },
    close_sound = {filename = '__base__/sound/armor-close.ogg', volume = 1 }
  },
  {
    type = 'equipment-grid',
    name = 'no-equipment-grid-1',
    width = 14,
    height = 14,
    equipment_categories = { 'armor' }
  },
})

data.raw['character-corpse']['character-corpse'].armor_picture_mapping['power-armor-pu238'] = 3
table.insert(data.raw.character.character.animations[2].armors, 'power-armor-pu238')
