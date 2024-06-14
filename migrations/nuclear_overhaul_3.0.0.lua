local function check_reactor_presence()
  for _, surface in pairs(game.surfaces) do
    if surface.count_entities_filtered{ type = 'reactor', limit = 1 } == 1 then
      return true
    end
  end
  return false
end

global.reactor_built = check_reactor_presence()
