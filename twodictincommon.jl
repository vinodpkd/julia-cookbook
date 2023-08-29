#Find out what two dictionaries have in common
a = Dict("x" => 1, "y" => 2, "z" => 3)

b = Dict("w" => 10, "x" => 11, "y" => 2)

println("Common keys:", intersect(keys(a), keys(b)))
println("Keys in a not in b:", setdiff(keys(a), keys(b)))
println("(key,value) pairs in common:", intersect(collect(a), collect(b)))
