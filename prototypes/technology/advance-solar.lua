data:extend({
    {
        type = "technology",
        name = "advance-solar",
        icon = "__base__/graphics/technology/solar-energy.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "advance-solar"
            }
        },
        prerequisites = { "automation", "solar-energy" },
        unit =
        {
            count = 160,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }
            },
            time = 10
        }
    }
})
