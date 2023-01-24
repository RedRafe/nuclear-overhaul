nuclear = {} 
nuclear.prefix = "no-"
nuclear.base = "__nuclear-overhaul__/"
nuclear.internal_name = "nuclear-overhaul"
nuclear.name  = "Nuclear Overhaul"

-- -- Init paths
require(nuclear.base .. "lib/paths")

-- -- Import library
require(no_path_lib .. "__init__")
require(no_path_lib .. "debugger")

---------------------------------------------------------------------------

nuclear.debug.log("-- --data")
require(no_path_p_categories       .. "__init__")
require(no_path_p_entities         .. "__init__")
require(no_path_p_equipments       .. "__init__")
require(no_path_p_items            .. "__init__")
require(no_path_p_recipes          .. "__init__")
require(no_path_p_technologies     .. "__init__")
require(no_path_p_vanilla_changes  .. "__init__")

---------------------------------------------------------------------------

require(no_path_compatibility_scripts .. "Krastorio2/data")