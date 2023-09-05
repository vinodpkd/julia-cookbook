path = "C/abc"
a = readdir(path)

if any(endswith(b,".py") for b in a)
	println("Julia")
else
	println("No Julia")
end

#=
for b in a
	if endswith(b,".jl")
	  println("Python")
	else
	  println("No Julia")
	end
end
=#
