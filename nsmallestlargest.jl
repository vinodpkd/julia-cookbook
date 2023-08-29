
portfolio = [
   Dict("name"=> "IBM", "shares"=> 100, "price"=> 91.2),
   Dict("name"=> "AAPL", "shares"=> 50, "price"=> 643.22),
   Dict("name"=> "FB", "shares"=> 150, "price"=> 21.09),
   Dict("name"=> "HPQ", "shares"=> 35, "price"=> 31.75),
   Dict("name"=> "YHOO", "shares"=> 45, "price"=> 16.35),
   Dict("name"=> "ACME", "shares"=> 75, "price"=> 115.65)
]
N = 3
sort(portfolio, by = x -> x["price"])[1:N] #N smallest shares by price
sort(portfolio, by = x -> x["price"],rev=true)[1:N] #N largest by price
