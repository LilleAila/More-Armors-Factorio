local roboportmk3 = table.deepcopy(data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"])
local tint = { r = 84, g = 255, b = 87, a = 255 }

roboportmk3.name = "personal-roboport-mk3"
roboportmk3.sprite = {
    filename = "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",
    tint = tint,
    width = 64,
    height = 64
}
roboportmk3.construction_radius = 25
roboportmk3.charging_station_count = 6
roboportmk3.robot_limit = 35
roboportmk3.power = "4MW"
roboportmk3.take_result = "personal-roboport-mk3"
roboportmk3.shape = {
    width = 2,
    height = 2,
    type = "full"
}

local item = table.deepcopy(data.raw.item["personal-roboport-mk2-equipment"])
item.name = "personal-roboport-mk3"
item.placed_as_equipment_result = "personal-roboport-mk3"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["personal-roboport-mk2-equipment"])
recipe.enabled = false
recipe.name = "personal-roboport-mk3"
recipe.ingredients = { { "personal-roboport-mk2-equipment", 3 }, { "speed-module-2", 50 },
    { "productivity-module-3", 50 }, { "electric-engine-unit", 70 },
    { "low-density-structure", 50 }, { "battery-mk2-equipment", 2 } }
recipe.energy_required = 20
recipe.result = "personal-roboport-mk3"

local technology = table.deepcopy(data.raw.technology["personal-roboport-mk2-equipment"])
technology.name = "personal-roboport-mk3"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/personal-roboport-mk2-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk2", "fusion-reactor-equipment", "rocket-silo",
    "personal-roboport-mk2-equipment" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "personal-roboport-mk3"
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
    count = 6500
}

data:extend { roboportmk3, item, recipe, technology }
