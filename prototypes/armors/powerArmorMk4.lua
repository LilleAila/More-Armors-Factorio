local powerArmorMk4 = table.deepcopy(data.raw.armor["power-armor-mk2"])
local tint = { r = 232, g = 103, b = 86, a = 255 }

powerArmorMk4.name = "power-armor-mk4"
powerArmorMk4.icons = {
    {
        icon = powerArmorMk4.icon,
        tint = tint
    }
}
powerArmorMk4.resistances = {
    {
        type = "acid",
        decrease = 15,
        percent = 85
    },
    {
        type = "explosion",
        decrease = 75,
        percent = 55
    },
    {
        type = "fire",
        decrease = 20,
        percent = 85
    },
    {
        type = "physical",
        decrease = 30,
        percent = 55
    }
}
powerArmorMk4.inventory_size_bonus = 70
powerArmorMk4.equipment_grid = "equipment-grid-2"

local recipe = table.deepcopy(data.raw.recipe["power-armor-mk2"])
recipe.enabled = false
recipe.name = "power-armor-mk4"
-- recipe.ingredients = { { "power-armor-mk2", 2 }, { "power-armor-mk3", 1 }, { "speed-module-3", 50 },
--     { "effectivity-module-3", 50 }, { "low-density-structure", 150 } }
recipe.ingredients = { { "power-armor-mk3", 3 }, { "speed-module-3", 50 }, { "productivity-module-3", 50 },
    { "low-density-structure", 100 }, { "electric-engine-unit", 100 }, { "processing-unit", 100 },
    { "fusion-reactor-equipment", 3 } }
recipe.energy_required = 90
recipe.result = "power-armor-mk4"

local technology = table.deepcopy(data.raw.technology["power-armor-mk2"])
technology.name = "power-armor-mk4"
technology.enabled = true
technology.icons = {
    {
        icon = technology.icon,
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk3", "fusion-reactor-equipment", "rocket-silo" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "power-armor-mk4"
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
        { "space-science-pack", 1 }
    },
    time = 30,
    count = 4500
}

data:extend { powerArmorMk4, technology, recipe }
