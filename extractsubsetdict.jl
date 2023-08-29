prices = Dict(
   "ACME" => 45.23,
   "AAPL" => 612.78,
   "IBM" => 205.55,
   "HPQ" => 37.20,
   "FB" => 10.75
)

# Make a dictionary of all prices over 200
p1 = Dict([ (key, value) for (key, value) in prices if value > 200 ])

println("All prices over 200")
println(p1)

# Make a dictionary of tech stocks
tech_names = Set(["AAPL", "IBM", "HPQ", "MSFT"])
p2 = Dict([ (key, value) for (key, value) in prices if key in tech_names ])

println("All techs")
println(p2)
