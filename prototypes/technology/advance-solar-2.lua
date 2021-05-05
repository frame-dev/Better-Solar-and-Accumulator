data:extend(
{
  {
    type = "technology",
    name = "advance-solar-2",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advance-solar-2"
      }
    },
    prerequisites = {"automation","solar-energy","advance-solar"},
    unit =
    {
      count = 160,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    }
  }
}
)
