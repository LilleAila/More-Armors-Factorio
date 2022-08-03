local energyShieldMk3 = table.deepcopy(data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"])
local tint = { r = 41, g = 212, b = 255, a = 255 }

energyShieldMk3.name = "energy-shield-mk3"
energyShieldMk3.sprite = {
    filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
    tint = tint,
    width = 64,
    height = 64
}
energyShieldMk3.energy_per_shield = "30KJ"
energyShieldMk3.max_shield_value = 250
energyShieldMk3.take_result = "energy-shield-mk3"
energyShieldMk3.shape = {
    width = 2,
    height = 4,
    type = "full"
}

local item = table.deepcopy(data.raw.item["energy-shield-mk2-equipment"])
item.name = "energy-shield-mk3"
item.placed_as_equipment_result = "energy-shield-mk3"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["energy-shield-mk2-equipment"])
recipe.enabled = false
recipe.name = "energy-shield-mk3"
recipe.ingredients = { { "energy-shield-mk2-equipment", 3 }, { "productivity-module-3", 100 },
    { "fusion-reactor-equipment", 1 }, { "low-density-structure", 200 } }
recipe.energy_required = 20
recipe.result = "energy-shield-mk3"

local technology = table.deepcopy(data.raw.technology["energy-shield-mk2-equipment"])
technology.name = "energy-shield-mk3"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk4", "fusion-reactor-equipment", "rocket-silo", "energy-shield-mk2-equipment" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "energy-shield-mk3"
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
    count = 1500
}

data:extend { energyShieldMk3, item, recipe, technology }
