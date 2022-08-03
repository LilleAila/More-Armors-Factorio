local batteryMk3 = table.deepcopy(data.raw["battery-equipment"]["battery-mk2-equipment"])
local tint = { r = 243, g = 74, b = 5, a = 255 }

batteryMk3.name = "battery-mk3"
batteryMk3.sprite = {
    filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
    tint = tint,
    width = 32,
    height = 64
}
batteryMk3.energy_source.buffer_capacity = "200MJ"
batteryMk3.take_result = "battery-mk3"
batteryMk3.shape = {
    width = 1,
    height = 2,
    type = "full"
}

local item = table.deepcopy(data.raw.item["battery-mk2-equipment"])
item.name = "battery-mk3"
item.placed_as_equipment_result = "battery-mk3"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["battery-mk2-equipment"])
recipe.enabled = false
recipe.name = "battery-mk3"
recipe.ingredients = { { "battery-mk2-equipment", 5 }, { "low-density-structure", 100 }, { "processing-unit", 100 } }
recipe.energy_required = 20
recipe.result = "battery-mk3"

local technology = table.deepcopy(data.raw.technology["battery-mk2-equipment"])
technology.name = "battery-mk3"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/battery-mk2-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk3", "fusion-reactor-equipment", "rocket-silo", "battery-mk2-equipment" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "battery-mk3"
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
    count = 5000
}

data:extend { batteryMk3, item, recipe, technology }
