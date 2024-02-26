_DEBUG = false
nolib = require '__nuclear-overhaul__.lib.data-util'

-- ============================================================================

nolib.debug.log('-- -- Categories')
require 'prototypes.categories.element'
require 'prototypes.categories.fuel'

nolib.debug.log('-- -- Entities')
require 'prototypes.entities.reactor'
require 'prototypes.entities.resource'

nolib.debug.log('-- -- Equipments')
require 'prototypes.equipments.active-defense'
require 'prototypes.equipments.battery'
require 'prototypes.equipments.energy-shield'
require 'prototypes.equipments.exoskeleton'
require 'prototypes.equipments.generator'
require 'prototypes.equipments.night-vision'
require 'prototypes.equipments.roboport'

nolib.debug.log('-- -- Items')
require 'prototypes.items.armor'
require 'prototypes.items.element'
require 'prototypes.items.equipment'
require 'prototypes.items.fluoride'
require 'prototypes.items.fuel'
require 'prototypes.items.reactor'
require 'prototypes.items.thorium'
require 'prototypes.items.yellowcake'

nolib.debug.log('-- -- Recipes')
require 'prototypes.recipes.armor'
require 'prototypes.recipes.decay'
require 'prototypes.recipes.enrichment'
require 'prototypes.recipes.equipment'
require 'prototypes.recipes.fluoride'
require 'prototypes.recipes.fuel'
require 'prototypes.recipes.processing'
require 'prototypes.recipes.reactor'
require 'prototypes.recipes.recycle'

nolib.debug.log('-- -- Technologies')
require 'prototypes.technologies.armor'
require 'prototypes.technologies.equipment'
require 'prototypes.technologies.technology'

nolib.debug.log('-- -- Vanilla changes')
require 'prototypes.vanilla-changes.entity'
require 'prototypes.vanilla-changes.item'
require 'prototypes.vanilla-changes.recipe'
require 'prototypes.vanilla-changes.resource'
require 'prototypes.vanilla-changes.technology'

-- ============================================================================

nolib.debug.log('-- -- Compatibility data')
require 'compatibility.krastorio2.data'
