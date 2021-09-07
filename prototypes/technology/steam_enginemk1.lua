data:extend({
    {
        type = "technology",
        name = "steam-engine-MK1",
        icon = "__base__/graphics/technology/solar-energy.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "steam-engine-MK1"
            }
        },
        prerequisites = { "electronics", "automation-2" },
        unit = {
            count = 55,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 }
            },
            time = 10
        }
    }
})
