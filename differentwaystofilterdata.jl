# Examples of different ways to filter data
mylist = [1, 4, -5, 10, -7, 2, 3, -1]

# All positive values
pos = [n for n in mylist if n > 0]
println(pos)

# All negative values
neg = [n for n in mylist if n < 0]
println(neg)

# Negative values clipped to 0
neg_clip = [n > 0 ? n : 0 for n in mylist]
println(neg_clip)

# Positive values clipped to 0
pos_clip = [n < 0 ? n : 0 for n in mylist]
println(pos_clip)

# Compressing example

addresses = [
    "5412 N CLARK",
    "5148 N CLARK", 
    "5800 E 58TH",
    "2122 N CLARK",
    "5645 N RAVENSWOOD",
    "1060 W ADDISON",
    "4801 N BROADWAY",
    "1039 W GRANVILLE",
]

counts = [0, 3, 10, 4, 1, 7, 6, 1]

more5 = [n > 5 for n in counts]
addresses[more5]
#a = [addresses[i] for i in eachindex(more5) if true == more5[i]]
#a = [a for (a, c) in Iterators.zip(addresses, counts) if c > 5]
#a = addresses[filter(i -> counts[i] > 5, 1:length(counts))]
println(a)
