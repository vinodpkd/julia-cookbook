# Sort a list of a dicts on a common key
rows = [Dict("fname" =>  "Brian", "lname" =>  "Jones", "uid" =>  1003),
    Dict("fname" =>  "David", "lname" =>  "Beazley", "uid" =>  1002),
    Dict("fname" =>  "John", "lname" =>  "Cleese", "uid" =>  1001),
    Dict("fname" =>  "Big", "lname" =>  "Jones", "uid" =>  1004)]

#sort by the key "fname"
sort(rows, by = x -> x["fname"])

#sort by the key "uid"
sort(rows, by = x -> x["uid"])

# sort list of Dicts by two keys simultaneously
sort(rows, by = x -> (x["lname"], x["fname"]))
