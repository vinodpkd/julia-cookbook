using DataStructures

rows = [
    Dict("address" => "5412 N CLARK", "date" => "07/01/2012"),
    Dict("address" => "5148 N CLARK", "date" => "07/04/2012"),
    Dict("address" => "5800 E 58TH", "date" => "07/02/2012"),
    Dict("address" => "2122 N CLARK", "date" => "07/03/2012"),
    Dict("address" => "5645 N RAVENSWOOD", "date" => "07/02/2012"),
    Dict("address" => "1060 W ADDISON", "date" => "07/02/2012"),
    Dict("address" => "4801 N BROADWAY", "date" => "07/01/2012"),
    Dict("address" => "1039 W GRANVILLE", "date" => "07/04/2012")
]

rows_by_date = DefaultDict{String, Vector{Dict{String, String}}}(Vector{Dict{String, String}})

for row in rows
    push!(rows_by_date[row["date"]], row)
end

for r in rows_by_date["07/01/2012"]
    println(r)
end
