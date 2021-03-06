data:extend(
{
  {
    type = "technology",
    name = "rare-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rare-solar"
      }
    },
    prerequisites = {"automation","solar-energy","advance-solar","advance-solar-2"},
    unit =
    {
      count = 420,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 15
    }
  }
}
)
