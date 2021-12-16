if not nuclear.technology then nuclear.technology = {} end

-- @ recipes: Table<String>
-- return Table<Effect>
local function _tableToEffects(recipes)
  local effects = {}
  for _, name in pairs(recipes) do
    table.insert(effects, {type = "unlock-recipe", recipe = name})
  end
  return effects
end

-- @ effects: Table<Effects>
-- return Table<String>
local function _effectsToTable(effects)
  local recipes = {}
  for _, effect in pairs(effects) do
    table.insert(recipes, effect.recipe)
  end
  return recipes
end

-- @ tableIn: Table<String>
-- @ tValues: Table<String>
-- @ exclude: bool
-- return Table<String>
local function _filterTable(tableIn, tValues, exclude)
  exclude = exclude or true
  local filtered = {}
  if exclude then
    filtered = tableIn
    for kt, t in pairs(tableIn) do
      for kv, v in pairs(tValues) do
        if v == t then
          filtered[kt] = nil
        end
      end
    end
    return filtered
  else
    filtered = tValues
    for kt, t in pairs(tableIn) do
      for kv, v in pairs(tValues) do
        if v == t then
          table.insert(filtered, v)
        end
      end
    end
    return filtered
  end
end

--- merge tables (overwrite keys)
-- @ tableIn1: table
-- @ tableIn2: table
-- return table
local function _mergeTable(tableIn1, tableIn2)
  for k,v in pairs(tableIn2) do 
    tableIn1[k] = v 
  end
  return tableIn1
end

--- concat tables
-- @ tableIn1: table
-- @ tableIn2: table
-- return table
local function _concatTable(tableIn1, tableIn2)
  local concat = {}
  local tableIn3 = _filterTable(tableIn2, tableIn1)
  for _, v in pairs(tableIn1) do
    table.insert(concat, v)
  end
  for _, v in pairs(tableIn3) do
    table.insert(concat, v)
  end
  return concat
end

-- @ technologyName: String
-- @ recipes: Table<String>
local function setUnlockEffects(technologyName, recipes)
  data.raw.technology[technologyName].effects = _tableToEffects(recipes)
end

-- @ technologyName: String
-- @ recipes: Table<String>
local function addUnlockEffects(technologyName, recipes)
  local effects = data.raw.technology[technologyName].effects
  effects = _effectsToTable(effects)
  effects = _concatTable(effects, recipes)
  effects = _tableToEffects(effects)
  data.raw.technology[technologyName].effects = effects
end

-- @ technologyName: String
-- @ recipes: Table<String>
local function removeUnlockEffects(technologyName, recipes)
  local effects = data.raw.technology[technologyName].effects
  effects = _effectsToTable(effects)
  effects = _filterTable(effects, recipes)
  effects = _tableToEffects(effects)
  data.raw.technology[technologyName].effects = effects
end

-- @ technologyName: String
-- @ technologies: Table<String>
local function setPrerequisite(technologyName, technologies)
  data.raw.technology[technologyName].prerequisites = technologies
end

-- @ technologyName: String
-- @ technologies: Table<String>
local function addPrerequisite(technologyName, technologies)
  local prerequisites = data.raw.technology[technologyName].prerequisites
  prerequisites = _concatTable(prerequisites, technologies)
  data.raw.technology[technologyName].prerequisites = prerequisites
end

-- @ technologyName: String
-- @ technologies: Table<String>
local function removePrerequisite(technologyName, technologies)
  local prerequisites = data.raw.technology[technologyName].prerequisites
  prerequisites = _filterTable(prerequisites, technologies)
  data.raw.technology[technologyName].prerequisites = prerequisites
end
  
-- @ technologyName: String
-- @ value: int
local function setCount(technologyName, value)
  data.raw.technology[technologyName].unit.count = value
end

---------------------------------------------------------------------------

nuclear.technology.setUnlockEffects = setUnlockEffects
nuclear.technology.addUnlockEffects = addUnlockEffects
nuclear.technology.removeUnlockEffects = removeUnlockEffects
nuclear.technology.setPrerequisite = setPrerequisite
nuclear.technology.addPrerequisite = addPrerequisite
nuclear.technology.removePrerequisite = removePrerequisite
nuclear.technology.setCount = setCount
