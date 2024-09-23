module ListInflacao (dollars) where 

dollars :: [Double]
dollars = iterate (\x -> x * 1.05) 100.0