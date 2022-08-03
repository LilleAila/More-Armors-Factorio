local exoskeletonMk2 = table.deepcopy(data.raw["movement-bonus-equipment"]["exoskeleton-equipment"])
local tint = { r = 53, g = 138, b = 188, a = 255 }

exoskeletonMk2.name = "exoskeleton-mk2"
exoskeletonMk2.sprite = {
    filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
    tint = tint,
    width = 64,
    height = 120
}
exoskeletonMk2.energy_consumption = "400000W"
exoskeletonMk2.movement_bonus = 0.5
exoskeletonMk2.take_result = "exoskeleton-mk2"
exoskeletonMk2.shape = {
    width = 2,
    height = 4,
    type = "full"
}

local item = table.deepcopy(data.raw.item["exoskeleton-equipment"])
item.name = "exoskeleton-mk2"
item.placed_as_equipment_result = "exoskeleton-mk2"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["exoskeleton-equipment"])
recipe.enabled = false
recipe.name = "exoskeleton-mk2"
recipe.ingredients = { { "exoskeleton-equipment", 3 }, { "speed-module-2", 50 }, { "electric-engine-unit", 70 },
    { "low-density-structure", 50 }, { "steel-plate", 100 }, { "fusion-reactor-equipment", 1 } }
recipe.energy_required = 20
recipe.result = "exoskeleton-mk2"

local technology = table.deepcopy(data.raw.technology["exoskeleton-equipment"])
technology.name = "exoskeleton-mk2"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/exoskeleton-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk2", "fusion-reactor-equipment", "rocket-silo", "exoskeleton-equipment" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "exoskeleton-mk2"
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
    count = 2500
}

data:extend { exoskeletonMk2, item, recipe, technology }
