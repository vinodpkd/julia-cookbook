struct User
    user_id::Int
end

users = [User(12),User(10),User(13)]

sort(users,by = x -> getfield(x,:user_id))
