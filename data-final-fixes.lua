nuclear.debug.log("-- --final-fixes")

for _, tech in pairs(data.raw.technology) do
  for i, p in pairs(tech.prerequisites or {}) do
    if p == "nuclear-fuel-reprocessing" then
      tech.prerequisites[i] = "nuclear-fuel-reprocessing-1"
    end
  end
end