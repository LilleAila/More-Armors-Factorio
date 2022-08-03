local smallExoskeleton = table.deepcopy(data.raw["movement-bonus-equipment"]["exoskeleton-equipment"])
local tint = { r = 243, g = 74, b = 5, a = 255 }

smallExoskeleton.name = "small-exoskeleton"
smallExoskeleton.sprite = {
    filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
    tint = tint,
    width = 64,
    height = 120
}
smallExoskeleton.energy_consumption = "400000W"
smallExoskeleton.movement_bonus = 0.2
smallExoskeleton.take_result = "small-exoskeleton"
smallExoskeleton.shape = {
    width = 2,
    height = 2,
    type = "full"
}

local item = table.deepcopy(data.raw.item["exoskeleton-equipment"])
item.name = "small-exoskeleton"
item.placed_as_equipment_result = "small-exoskeleton"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["exoskeleton-equipment"])
recipe.enabled = false
recipe.name = "small-exoskeleton"
recipe.ingredients = { { "exoskeleton-equipment", 1 }, { "productivity-module-2", 50 }, { "electric-engine-unit", 20 },
    { "low-density-structure", 30 }, { "steel-plate", 50 } }
recipe.energy_required = 20
recipe.result = "small-exoskeleton"

local technology = table.deepcopy(data.raw.technology["exoskeleton-equipment"])
technology.name = "small-exoskeleton"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/exoskeleton-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk2", "rocket-silo", "exoskeleton-equipment" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "small-exoskeleton"
    }
}
technology.unit = {
    ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
    },
    time = 30,
    count = 800
}

data:extend { smallExoskeleton, item, recipe, technology }
