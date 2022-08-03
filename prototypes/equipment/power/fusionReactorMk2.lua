local fusionReactorMk2 = table.deepcopy(data.raw["generator-equipment"]["fusion-reactor-equipment"])
local tint = { r = 219, g = 208, b = 0, a = 255 }

fusionReactorMk2.name = "fusion-reactor-mk2"
fusionReactorMk2.sprite = {
    filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
    tint = tint,
    width = 120,
    height = 120
}
fusionReactorMk2.power = "1.5MW"
fusionReactorMk2.take_result = "fusion-reactor-mk2"
fusionReactorMk2.shape = {
    width = 4,
    height = 4,
    type = "full"
}

local item = table.deepcopy(data.raw.item["fusion-reactor-equipment"])
item.name = "fusion-reactor-mk2"
item.placed_as_equipment_result = "fusion-reactor-mk2"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["fusion-reactor-equipment"])
recipe.enabled = false
recipe.name = "fusion-reactor-mk2"
recipe.ingredients = { { "fusion-reactor-equipment", 3 }, { "speed-module-2", 100 },
    { "productivity-module-3", 100 }, { "effectivity-module-3", 100 }, { "electric-engine-unit", 70 },
    { "low-density-structure", 150 }, { "battery-mk2-equipment", 5 } }
recipe.energy_required = 60
recipe.result = "fusion-reactor-mk2"

local technology = table.deepcopy(data.raw.technology["fusion-reactor-equipment"])
technology.name = "fusion-reactor-mk2"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk4", "fusion-reactor-equipment", "rocket-silo", "spidertron-mk2" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "fusion-reactor-mk2"
    }
}
technology.unit = {
    ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 }
    },
    time = 30,
    count = 10000
}

data:extend { fusionReactorMk2, item, recipe, technology }
