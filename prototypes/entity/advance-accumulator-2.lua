function accumulator_picture(tint, repeat_count)
    return
    {
        layers =
        {
            {
                filename = "__solar-kit__/graphics/entity/accumulator/advance-accumulator-2.png",
                priority = "high",
                width = 66,
                height = 94,
                repeat_count = repeat_count,
                shift = util.by_pixel(0, -10),
                tint = tint,
                animation_speed = 0.5,
                hr_version =
                {
                    filename = "__base__/graphics/entity/accumulator/hr-accumulator.png",
                    priority = "high",
                    width = 130,
                    height = 189,
                    repeat_count = repeat_count,
                    shift = util.by_pixel(0, -11),
                    tint = tint,
                    animation_speed = 0.5,
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                priority = "high",
                width = 120,
                height = 54,
                repeat_count = repeat_count,
                shift = util.by_pixel(28, 6),
                draw_as_shadow = true,
                hr_version =
                {
                    filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
                    priority = "high",
                    width = 234,
                    height = 106,
                    repeat_count = repeat_count,
                    shift = util.by_pixel(29, 6),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    }
end

function accumulator_charge()
    return
    {
        layers =
        {
            accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
            {
                filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
                priority = "high",
                width = 90,
                height = 100,
                line_length = 6,
                frame_count = 24,
                blend_mode = "additive",
                shift = util.by_pixel(0, -22),
                hr_version =
                {
                    filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
                    priority = "high",
                    width = 178,
                    height = 206,
                    line_length = 6,
                    frame_count = 24,
                    blend_mode = "additive",
                    shift = util.by_pixel(0, -22),
                    scale = 0.5
                }
            }
        }
    }
end

function accumulator_discharge()
    return
    {
        layers =
        {
            accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
            {
                filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
                priority = "high",
                width = 88,
                height = 104,
                line_length = 6,
                frame_count = 24,
                blend_mode = "additive",
                shift = util.by_pixel(-2, -22),
                hr_version =
                {
                    filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
                    priority = "high",
                    width = 170,
                    height = 210,
                    line_length = 6,
                    frame_count = 24,
                    blend_mode = "additive",
                    shift = util.by_pixel(-1, -23),
                    scale = 0.5
                }
            }
        }
    }
end

data:extend({
    {
        type = "accumulator",
        name = "advance-accumulator-2",
        icon = "__solar-kit__/graphics/icons/advance-accumulator-2.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "advance-accumulator-2"},
        max_health = 150,
        corpse = "accumulator-remnants",
        collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
        selection_box = {{-1, -1}, {1, 1}},
        drawing_box = {{-1, -1.5}, {1, 1}},
        energy_source =
        {
            type = "electric",
            buffer_capacity = "32MJ",
            usage_priority = "tertiary",
            input_flow_limit = "6MW",
            output_flow_limit = "6MW"
        },
        picture = accumulator_picture(),
        charge_animation = accumulator_charge(),

        charge_cooldown = 30,
        charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
        discharge_animation = accumulator_discharge(),
        discharge_cooldown = 60,
        discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/accumulator-working.ogg",
                volume = 1
            },
            idle_sound =
            {
                filename = "__base__/sound/accumulator-idle.ogg",
                volume = 0.4
            },
            max_sounds_per_type = 5
        },

        circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
        circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,

        default_output_signal = {type = "virtual", name = "signal-A"}
    }
}
)