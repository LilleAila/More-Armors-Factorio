local powerArmorMk3 = table.deepcopy(data.raw.armor["power-armor-mk2"])
local tint = { r = 0, g = 217, b = 58, a = 255 }

powerArmorMk3.name = "power-armor-mk3"
powerArmorMk3.icons = {
    {
        icon = powerArmorMk3.icon,
        tint = tint
    }
}
powerArmorMk3.resistances = {
    {
        type = "acid",
        decrease = 10,
        percent = 80
    },
    {
        type = "explosion",
        decrease = 70,
        percent = 50
    },
    {
        type = "fire",
        decrease = 15,
        percent = 80
    },
    {
        type = "physical",
        decrease = 25,
        percent = 50
    }
}
powerArmorMk3.inventory_size_bonus = 50
powerArmorMk3.equipment_grid = "equipment-grid-1"

local recipe = table.deepcopy(data.raw.recipe["power-armor-mk2"])
recipe.enabled = false
recipe.name = "power-armor-mk3"
-- recipe.ingredients = { { "effectivity-module-3", 150 }, { "speed-module-3", 150 }, { "productivity-module-3", 200 },
--     { "electric-engine-unit", 350 }, { "low-density-structure", 180 }, { "processing-unit", 600 },
--     { "power-armor-mk2", 2 } }
recipe.ingredients = { { "effectivity-module-3", "50" }, { "speed-module-3", "50" },
    { "electric-engine-unit", "100" }, { "low-density-structure", 80 }, { "processing-unit", 200 },
    { "advanced-circuit", 150 }, { "power-armor-mk2", 2 } }
recipe.energy_required = 60
recipe.result = "power-armor-mk3"

local technology = table.deepcopy(data.raw.technology["power-armor-mk2"])
technology.name = "power-armor-mk3"
technology.enabled = true
technology.icons = {
    {
        icon = technology.icon,
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk2", "fusion-reactor-equipment", "rocket-silo" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "power-armor-mk3"
    }
}
technology.unit = {
    ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
    },
    time = 30,
    count = 3000
}

data:extend { powerArmorMk3, technology, recipe }
