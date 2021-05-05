data:extend(
{
  {
    type = "technology",
    name = "rare-accumulator",
    icon = "__solar-kit__/graphics/icons/rare-accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rare-accumulator"
      }
    },
    prerequisites = {"automation","solar-energy","electric-energy-accumulators","advance-accumulator","advance-accumulator-2"},
    unit =
    {
      count = 460,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack",1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    }
  }
}
)
