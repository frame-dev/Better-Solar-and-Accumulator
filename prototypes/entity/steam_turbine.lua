require("util")
local hit_effects = require("prototypes.entity.hit-effects")
local sounds = require("prototypes.entity.sounds")

data:extend({
    {
        type = "generator",
        name = "steam-engine-MK1",
        icon = "__base__/graphics/icons/steam-engine.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.3, result = "steam-engine-MK1" },
        max_health = 400,
        dying_explosion = "medium-explosion",
        corpse = "steam-engine-remnants",
        dying_explosion = "steam-engine-explosion",
        alert_icon_shift = util.by_pixel(3, -34),
        effectivity = 1,
        fluid_usage_per_tick = 0.32,
        maximum_temperature = 500,
        resistances = {
            {
                type = "fire",
                percent = 70
            },
            {
                type = "impact",
                percent = 30
            }
        },
        fast_replaceable_group = "steam-engine-MK1",
        collision_box = { { -1.25, -2.35 }, { 1.25, 2.35 } },
        selection_box = { { -1.5, -2.5 }, { 1.5, 2.5 } },
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_covers = pipecoverspictures(),
            pipe_connections = {
                { type = "input-output", position = { 0, 3 } },
                { type = "input-output", position = { 0, -3 } }
            },
            production_type = "input-output",
            filter = "steam",
            minimum_temperature = 100.0
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-output",
        },
        horizontal_animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
                    width = 176,
                    height = 128,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(1, -5),
                    hr_version = {
                        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H.png",
                        width = 352,
                        height = 257,
                        frame_count = 32,
                        line_length = 8,
                        shift = util.by_pixel(1, -4.75),
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
                    width = 254,
                    height = 80,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(48, 24),
                    hr_version = {
                        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
                        width = 508,
                        height = 160,
                        frame_count = 32,
                        line_length = 8,
                        draw_as_shadow = true,
                        shift = util.by_pixel(48, 24),
                        scale = 0.5
                    }
                }
            }
        },
        vertical_animation = {
            layers = {
                {
                    filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
                    width = 112,
                    height = 195,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(5, -6.5),
                    hr_version = {
                        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V.png",
                        width = 225,
                        height = 391,
                        frame_count = 32,
                        line_length = 8,
                        shift = util.by_pixel(4.75, -6.25),
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
                    width = 165,
                    height = 153,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(40.5, 9.5),
                    hr_version = {
                        filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
                        width = 330,
                        height = 307,
                        frame_count = 32,
                        line_length = 8,
                        draw_as_shadow = true,
                        shift = util.by_pixel(40.5, 9.25),
                        scale = 0.5
                    }
                }
            }
        },
        smoke = {
            {
                name = "light-smoke",
                north_position = { 0.9, 0.0 },
                east_position = { -2.0, -2.0 },
                frequency = 10 / 32,
                starting_vertical_speed = 0.08,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            }
        },
    }
})
