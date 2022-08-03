local spidertronMk2 = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])
local tint = { r = 232, g = 103, b = 86, a = 255 }

spidertronMk2.name = "spidertron-mk2"
spidertronMk2.equipment_grid = "equipment-grid-3"
spidertronMk2.max_health = 4000
spidertronMk2.healing_per_tick = 0.3
spidertronMk2.chain_shooting_cooldown_modifier = 0.4
spidertronMk2.resistances = {
    {
        type = "acid",
        decrease = 10,
        percent = 70
    },
    {
        type = "electric",
        decrease = 5,
        percent = 70
    },
    {
        type = "explosion",
        decrease = 20,
        percent = 100
    },
    {
        type = "fire",
        decrease = 15,
        percent = 65
    },
    {
        type = "impact",
        decrease = 50,
        percent = 80
    },
    {
        type = "laser",
        decrease = 0,
        percent = 70
    },
    {
        type = "physical",
        decrease = 20,
        percent = 60
    }
}
spidertronMk2.icons = {
    {
        icon = spidertronMk2.icon,
        tint = tint
    }
}
spidertronMk2.height = 3.5
spidertronMk2.minable = { mining_time = 1, result = "spidertron-mk2" }
spidertronMk2.inventory_size = 140
spidertronMk2.chunk_exploration_radius = 5
spidertronMk2.torso_rotation_speed = 0.02
spidertronMk2.minimap_representation = {
    filename = "__more-armors__/graphics/map/spidertron-mk2-map.png",
    flags = { "icon" },
    size = { 128, 128 },
    scale = 0.5
}

local function get_leg_hit_the_ground_trigger_vanilla()
    return {
        {
            type = "create-trivial-smoke",
            smoke_name = "smoke-building",
            repeat_count = 4,
            starting_frame_deviation = 5,
            starting_frame_speed_deviation = 5,
            offset_deviation = { { -0.2, -0.2 }, { 0.2, 0.2 } },
            speed_from_center = 0.03
        }
    }
end

spidertronMk2.spider_engine = {
    legs = {
        -- { -- 1
        --     leg = "spidertron-leg-1",
        --     mount_position = util.by_pixel(13, -22.5), --{0.5, -0.75},
        --     ground_position = { 2.26 * 1.5, -2.26 * 1.5 },
        --     blocking_legs = { 2 },
        --     leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        -- },
        { -- 2
            leg = "spidertron-leg-1",
            mount_position = util.by_pixel(22.5, -13), --{0.75, -0.25},
            ground_position = { 2.96 * 1.5, -1.23 * 1.5 },
            blocking_legs = { 1, 2 },
            leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        },
        { -- 3
            leg = "spidertron-leg-2",
            mount_position = util.by_pixel(26, 0), --{0.75, 0.25},
            ground_position = { 3.2 * 1.5, 0 * 1.5 },
            blocking_legs = { 1, 3 },
            leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        },
        { -- 4
            leg = "spidertron-leg-3",
            mount_position = util.by_pixel(22.5, 13), --{0.75, 0.25},
            ground_position = { 2.96 * 1.5, 1.23 * 1.5 },
            blocking_legs = { 2 },
            leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        },
        -- { -- 5
        --     leg = "spidertron-leg-5",
        --     mount_position = util.by_pixel(13, 22.5), --{0.5, 0.75},
        --     ground_position = { 2.26 * 1.5, 2.26 * 1.5 },
        --     blocking_legs = { 4 },
        --     leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        -- },
        -- { -- 6
        --     leg = "spidertron-leg-6",
        --     mount_position = util.by_pixel(-13, -22.5), --{-0.5, -0.75},
        --     ground_position = { -2.26 * 1.5, -2.26 * 1.5 },
        --     blocking_legs = { 7 },
        --     leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        -- },
        { -- 7
            leg = "spidertron-leg-4",
            mount_position = util.by_pixel(-22.5, -13), --{-0.75, -0.25},
            ground_position = { -2.96 * 1.5, -1.23 * 1.5 },
            blocking_legs = { 5 },
            leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        },
        { -- 8
            leg = "spidertron-leg-5",
            mount_position = util.by_pixel(-26, 0), --{-0.75, 0.25},
            ground_position = { -3.2 * 1.5, 0 * 1.5 },
            blocking_legs = { 4, 6 },
            leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        },
        { -- 9
            leg = "spidertron-leg-6",
            mount_position = util.by_pixel(-22.5, 13), --{-0.5, 0.75},
            ground_position = { -2.96 * 1.5, 1.23 * 1.5 },
            blocking_legs = { 5, 6 },
            leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        },
        -- { -- 10
        --     leg = "spidertron-leg-10",
        --     mount_position = util.by_pixel(-13, 22.5), --{-0.5, 0.75},
        --     ground_position = { -2.26 * 1.5, 2.26 * 1.5 },
        --     blocking_legs = { 9 },
        --     leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger_vanilla()
        -- }
    },
    military_target = "spidertron-military-target",
}

local spidertronMk2_Item = table.deepcopy(data.raw["item-with-entity-data"]["spidertron"])

spidertronMk2_Item.name = "spidertron-mk2"
spidertronMk2_Item.icons = {
    {
        icon = spidertronMk2_Item.icon,
        tint = tint
    }
}
spidertronMk2_Item.place_result = "spidertron-mk2"

local recipe = table.deepcopy(data.raw.recipe["spidertron"])
recipe.enabled = false
recipe.name = "spidertron-mk2"
recipe.ingredients = { { "spidertron", 2 }, { "power-armor-mk3", 2 }, { "effectivity-module-3", 50 },
    { "exoskeleton-equipment", 10 }, { "fusion-reactor-equipment", 5 }, { "low-density-structure", 250 },
    { "rocket-control-unit", 50 }, { "atomic-bomb", 10 }, { "exoskeleton-mk2", 1 } }
recipe.energy_required = 60
recipe.result = "spidertron-mk2"

local technology = table.deepcopy(data.raw.technology["spidertron"])
technology.name = "spidertron-mk2"
technology.enabled = true
technology.icons = {
    {
        icon = technology.icon,
        tint = tint
    }
}
technology.iconSize = 128
technology.prerequisites = { "power-armor-mk3", "spidertron", "rocket-silo", "fusion-reactor-equipment",
    "exoskeleton-mk2" }
technology.effects = {
    {
        type = "unlock-recipe",
        recipe = "spidertron-mk2"
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
    count = 3000
}


data:extend { spidertronMk2, spidertronMk2_Item, technology, recipe }
