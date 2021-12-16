nuclear = {} 
nuclear.prefix = "no-"
nuclear.base = "__nuclear-overhaul__/"
nuclear.internal_name = "nuclear-overhaul"
nuclear.name  = "Nuclear Extended"

-- -- Init paths
require(nuclear.base .. "lib/paths")

-- -- Import library
require(path_lib .. "__init__")
require(path_lib .. "debugger")

---------------------------------------------------------------------------

nuclear.debug.log("-- --data")
require(path_p_categories       .. "__init__")
require(path_p_entities         .. "__init__")
require(path_p_items            .. "__init__")
require(path_p_recipes          .. "__init__")
require(path_p_technologies     .. "__init__")
require(path_p_vanilla_changes  .. "__init__")

---------------------------------------------------------------------------

require(path_compatibility_scripts .. "Krastorio2/data")