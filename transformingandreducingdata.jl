path = "C/abc"
a = readdir(path)

if any(endswith(b,".jl") for b in a)
	println("Julia")
else
	println("No Julia")
end

#=
for b in a
	if endswith(b,".jl")
	  println("Julia")
	else
	  println("No Julia")
	end
end
=#

# Output a tuple as CSV

a = join((string(x) for x in (1,"1","c",1)),",")

# Data reduction across fields of a data structure

portfolio = [Dict("name" => "GOOG", "shares" =>  50),
	   Dict("name" => "YHOO", "shares" =>  75),
	   Dict("name" => "AOL", "shares" =>  20),
	   Dict("name" => "SCOX", "shares" =>  65)]

minm = minimum((row["shares"] for row in portfolio))

minm,maxm = extrema((row["shares"] for row in portfolio))
