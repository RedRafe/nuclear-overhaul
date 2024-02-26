nolib.debug.log('-- ammo')

for _, ammo_recipe in pairs({
  'uranium-rounds-magazine',
  'uranium-cannon-shell',
  'explosive-uranium-cannon-shell',
  'atomic-bomb',
}) do
  nolib.replace_ingredient(ammo_recipe, 'uranium-238', 'uranium-236', 1, false)
  nolib.replace_ingredient(ammo_recipe, 'uranium-235', 'plutonium-238', 5/3, true)
end
