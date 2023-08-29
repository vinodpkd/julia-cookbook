prices = Dict("ACME" => 45.23, "AAPL" => 612.78, "IBM" => 205.55, "HPQ" => 37.20, "FB" => 10.75)

# Find min and max price
min_price = findmin(prices)
max_price = findmax(prices)

println("min price: ", min_price)
println("max price: ", max_price)

println("sorted prices:")
prices_sorted = sort(collect(prices), by=x->x[2])
for (name, price) in prices_sorted
    println("    ", name, " ", price)
end
```

In Julia, you can use a dictionary to store key-value pairs. The `findmin` and `findmax` functions are used to find the minimum and maximum values in the dictionary, respectively. The `sort` function is used to sort the dictionary by value, and the `collect` function is used to convert the dictionary to an array of key-value pairs. Finally, a `for` loop is used to print the sorted prices.

