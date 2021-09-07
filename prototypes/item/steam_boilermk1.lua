local boiler_mk1 = util.table.deepcopy(data.raw.item["boiler"])
boiler_mk1.name = "boiler-mk1"
boiler_mk1.order= "b[steam-power]-a[boiler-1]"
boiler_mk1.place_result = "boiler-mk1"
data:extend({boiler_mk1})