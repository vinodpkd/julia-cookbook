using DataStructures

struct PriorityQueue{T}
    queue::Vector{T}
    index::Int
end

function PriorityQueue{T}() where T
    PriorityQueue{T}([], 0)
end

function push!(pq::PriorityQueue{T}, item::Any, priority::Real) where T
    pq.index += 1
    heappush!(pq.queue, (-priority, pq.index, item))
end

function pop!(pq::PriorityQueue{T}) where T
    heappop!(pq.queue)[-1]
end

# Example use
struct Item
    name::String
end

function Base.show(io::IO, item::Item)
    print(io, "Item($(item.name))")
end

pq = PriorityQueue{Item}()
Base.push!(pq, Item("foo"), 1)
Base.push!(pq, Item("bar"), 5)
Base.push!(pq, Item("spam"), 4)
Base.push!(pq, Item("grok"), 1)

println("Should be bar: ", pop!(pq))
println("Should be spam: ", pop!(pq))
println("Should be foo: ", pop!(pq))
println("Should be grok: ", pop!(pq))
