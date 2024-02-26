nolib.debug.log('-- technology')

local remove_or_migrate_techs = {
  -- -- Remove techs
  { 'nuclear-fuel-reprocessing', 'nuclear-fuel-reprocessing-1' }
}

for _, info in pairs(remove_or_migrate_techs) do
  local old = info[1]
  local new = info[2]
  local old_tech = data.raw.technology[old]

  -- migrate effects
  if new then
    for _, effect in pairs((old_tech and old_tech.effects) or {}) do
      nolib.add_effect(new, effect)
    end
  end

  -- migrate prerequisites
  for _, tech in pairs(data.raw.technology) do
    if nolib.has_prerequisite(tech.name, old) then
      if new then
        nolib.replace_prerequisite(tech.name, old, new)
      else
        nolib.remove_prerequisite(tech.name, old)
      end
    end
  end

  data.raw.technology[old] = nil
end
