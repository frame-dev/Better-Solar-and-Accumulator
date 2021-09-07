local boiler_mk1 = util.table.deepcopy(data.raw["boiler"]["boiler"])
boiler_mk1.target_temperature = 175
boiler_mk1.energy_consumption = "3MW"
boiler_mk1.name = "boiler-mk1"
boiler_mk1.minable.result =  "boiler-mk1"
boiler_mk1.fast_replaceable_group = "boiler"
boiler_mk1.energy_source.effectivity = 1.1
data:extend({ boiler_mk1 })
