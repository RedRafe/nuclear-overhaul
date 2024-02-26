nolib.debug.log('-- equipment')

data:extend({
  {
    type = 'technology',
    name = 'battery-fluoride-th233-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'battery-fluoride-th233-equipment.png'),
    prerequisites = { 'battery-mk2-equipment', 'alpha-decay', 'beta-decay' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'battery-fluoride-th233-equipment'
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-i-b'
  },
  {
    type = 'technology',
    name = 'energy-shield-th232-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'energy-shield-th232-equipment.png'),
    prerequisites = { 'energy-shield-mk2-equipment',  'alpha-decay', 'beta-decay' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'energy-shield-th232-equipment'
      }
    },
    unit =
    {
      count = 250,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-e-b'
  },
  {
    type = 'technology',
    name = 'exoskeleton-np237-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'exoskeleton-np237-equipment.png'),
    prerequisites = { 'exoskeleton-equipment', 'alpha-decay', 'beta-decay' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'exoskeleton-np237-equipment'
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-h'
  },
  {
    type = 'technology',
    name = 'fusion-reactor-u236-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'fusion-reactor-u236-equipment.png'),
    prerequisites = { 'fusion-reactor-equipment', 'alpha-decay', 'beta-decay' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'fusion-reactor-u236-equipment'
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-l'
  },
  {
    type = 'technology',
    name = 'fusion-reactor-pu238-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'fusion-reactor-pu238-equipment.png'),
    prerequisites = { 'fusion-reactor-u236-equipment' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'fusion-reactor-pu238-equipment'
      }
    },
    unit =
    {
      count = 300,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 },
        { 'space-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-l'
  },
  {
    type = 'technology',
    name = 'night-vision-th232-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'night-vision-th232-equipment.png'),
    prerequisites = { 'night-vision-equipment', 'alpha-decay', 'beta-decay' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'night-vision-th232-equipment'
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-g'
  },
  {
    type = 'technology',
    name = 'personal-laser-defense-pa233-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'personal-laser-defense-pa233-equipment.png'),
    prerequisites = { 'personal-laser-defense-equipment', 'alpha-decay', 'beta-decay' },
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'personal-laser-defense-pa233-equipment'
      }
    },
    unit =
    {
      count = 300,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'g-m'
  },
  {
    type = 'technology',
    name = 'personal-roboport-u236-equipment',
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment(no_path_g_technologies .. 'personal-roboport-u236-equipment.png'),
    effects =
    {
      {
        type = 'unlock-recipe',
        recipe = 'personal-roboport-u236-equipment'
      }
    },
    prerequisites = { 'personal-roboport-mk2-equipment', 'alpha-decay', 'beta-decay' },
    unit =
    {
      count = 300,
      ingredients = {
        { 'automation-science-pack', 1 },
        { 'logistic-science-pack', 1 },
        { 'military-science-pack', 1 },
        { 'chemical-science-pack', 1 },
        { 'utility-science-pack', 1 },
        { 'production-science-pack', 1 }
      },
      time = 60
    },
    order = 'c-k-d-zz'
  },
})