---------------------------------------------------------------------------
-- -- -- PRE INITIALIZATION
---------------------------------------------------------------------------
-- General Info
nuclear                         = {} 
nuclear.internal_name           = "nuclear-overhaul"
nuclear.title_name              = "Nuclear Extended"
nuclear.version                 = mods[nuclear.internal_name]
nuclear.stage                   = "data"

-- -- Global Nuclear Overhaul paths
require("__nuclear-overhaul__/lib/public/paths")

-- -- Global Nuclear Overhaul utilities library
require(path_public_lib        .. "utils")

-- -- Global Nuclear Overhaul modules
require(path_private_lib        .. "ammo")
require(path_private_lib        .. "recipe")
require(path_private_lib        .. "technology")

---------------------------------------------------------------------------
-- -- -- CONTENTS INITIALIZATION (data stage)
---------------------------------------------------------------------------
require(path_p_achievements     .. "__init__")
require(path_p_categories       .. "__init__")
require(path_p_entities         .. "__init__")
require(path_p_item_groups      .. "__init__")
require(path_p_items            .. "__init__")
require(path_p_others           .. "__init__")
require(path_p_recipes          .. "__init__")
require(path_p_technologies     .. "__init__")
require(path_p_vanilla_changes  .. "__init__")

---------------------------------------------------------------------------
-- -- -- COMPATIBILITY SCRIPTS
---------------------------------------------------------------------------
require(path_compatibility_scripts .. "Krastorio2/data")