data:extend(
{
  {
    type = "technology",
    name = "legendary-accumulator",
    icon = "__solar-kit__/graphics/icons/legendary-accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "legendary-accumulator"
      }
    },
    prerequisites = {"automation","solar-energy","electric-energy-accumulators","advance-accumulator","advance-accumulator-2","rare-accumulator"},
    unit =
    {
      count = 560,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack",1},
        {"chemical-science-pack", 1 },
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    }
  }
}
)
