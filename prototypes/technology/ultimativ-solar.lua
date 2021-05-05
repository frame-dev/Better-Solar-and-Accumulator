data:extend(
{
  {
    type = "technology",
    name = "ultimativ-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "legendary-solar"
      }
    },
    prerequisites = {"automation","solar-energy","advance-solar","advance-solar-2","rare-solar","legendary-solar"},
    unit =
    {
      count = 540,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 2},
        {"production-science-pack", 2},
        {"utility-science-pack", 2}
      },
      time = 30
    }
  }
}
)
