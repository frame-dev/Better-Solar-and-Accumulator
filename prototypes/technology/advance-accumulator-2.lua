data:extend(
{
  {
    type = "technology",
    name = "advance-accumulator-2",
    icon = "__solar-kit__/graphics/icons/advance-accumulator-2.png",
    icon_size = 64, icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advance-accumulator-2"
      }
    },
    prerequisites = {"automation","solar-energy","electric-energy-accumulators","advance-accumulator"},
    unit =
    {
      count = 360,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    }
  }
}
)
