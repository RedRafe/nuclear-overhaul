data:extend({
  {
    type = "armor",
    name = "power-armor-mk2",
    icon = "__base__/graphics/icons/power-armor-mk2.png",
    icon_size = 64, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 40
      },
      {
        type = "acid",
        decrease = 0,
        percent = 70
      },
      {
        type = "explosion",
        decrease = 60,
        percent = 50
      },
      {
        type = "fire",
        decrease = 0,
        percent = 70
      }
    },
    subgroup = "armor",
    order = "e[power-armor-mk2]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "large-equipment-grid",
    inventory_size_bonus = 30,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
})

-- TODO: substitute mk2 with new armor name
data.raw.["character-corpse"]["character-corpse"].armor_picture_mapping["power-armor-mk2"] = 3
table.insert(data.raw.character.character.animations[2].armors, "power-armor-mk2")
