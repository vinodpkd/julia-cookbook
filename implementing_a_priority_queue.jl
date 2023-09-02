using DataStructures
x = PriorityQueue{String, Int}(Base.Order.Reverse)

enqueue!(x,"foo" => 1)
enqueue!(x,"bar" => 5)
enqueue!(x,"spam" => 4)
enqueue!(x,"grok" => 1)

println("Should be bar: ",dequeue_pair!(x))
println("Should be spam: ",dequeue_pair!(x))
println("Should be grok: ",dequeue_pair!(x))
println("Should be foo: ",dequeue_pair!(x))
