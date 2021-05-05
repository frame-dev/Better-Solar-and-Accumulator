data:extend(
{
  {
    type = "technology",
    name = "advance-accumulator",
    icon = "__solar-kit__/graphics/icons/advance-accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advance-accumulator"
      }
    },
    prerequisites = {"automation","solar-energy","electric-energy-accumulators"},
    unit =
    {
      count = 180,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack",1}
      },
      time = 30
    }
  }
}
)
