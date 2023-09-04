# Remove duplicate entries from a sequence while keeping order
a = [1, 5, 2, 1, 9, 1, 5, 10]
b = []
[push!(b,i) for i in a if !(i in b)];
