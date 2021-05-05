data:extend(
    {
        {
            type = "solar-panel",
            name = "advance-solar",
            icon = "__solar-kit__/graphics/icons/advance-solar.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "advance-solar"},
            max_health = 500,
            corpse = "big-remnants",
            collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            energy_source =
            {
                type = "electric",
                usage_priority = "solar"
            },
            picture =
            {
                filename = "__solar-kit__/graphics/entity/advance-solar.png",
                priority = "high",
                width = 116,
                height = 112,
            },
            production = "600KW"
        }
    }
)
