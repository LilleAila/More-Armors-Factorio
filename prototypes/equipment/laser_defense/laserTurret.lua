local laserTurret = table.deepcopy(data.raw["active-defense-equipment"]["personal-laser-defense-equipment"])
local tint = { r = 243, g = 74, b = 5, a = 255 }

laserTurret.name = "personal-laser-turret"
laserTurret.sprite = {
    filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
    tint = tint,
    width = 64,
    height = 64
}
laserTurret.automatic = true
laserTurret.attack_parameters = {
    type = "projectile",
    ammo_category = "electric",
    cooldown = 1,
    damage_modifier = 20,
    projectile_center = { 0, 0 },
    projectile_creation_distance = 0.6,
    range = 20,
    sound = make_laser_sounds(),
    ammo_type =
    {
        type = "projectile",
        category = "electric",
        energy_consumption = "70kJ",
        projectile = "laser",
        speed = 1,
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "laser",
                        starting_speed = 0.1
                    }
                }
            }
        }
    }
}
laserTurret.take_result = "personal-laser-turret"
laserTurret.shape = {
    width = 2,
    height = 2,
    type = "full"
}

local item = table.deepcopy(data.raw.item["personal-laser-defense-equipment"])
item.name = "personal-laser-turret"
item.placed_as_equipment_result = "personal-laser-turret"
item.icons = {
    {
        icon = item.icon,
        tint = tint
    }
}

local recipe = table.deepcopy(data.raw.recipe["personal-laser-defense-equipment"])
recipe.enabled = false
recipe.name = "personal-laser-turret"
recipe.ingredients = { { "personal-laser-defense-equipment", 5 }, { "speed-module-3", 100 },
    { "low-density-structure", 200 } }
recipe.energy_required = 15
recipe.result = "personal-laser-turret"

local technology = table.deepcopy(data.raw.technology["personal-laser-defense-equipment"])
technology.name = "personal-laser-turret"
technology.enabled = true
technology.icons = {
    {
        -- icon = technology.icon,
        icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk3", "fusion-reactor-equipment", "rocket-silo",
    "personal-laser-defense-equipment" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "personal-laser-turret"
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
    count = 1000
}

data:extend { laserTurret, item, recipe, technology }
