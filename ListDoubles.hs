module ListDoubles (doubles) where

doubles :: [Int]
doubles = generate 10
    where
        generate x = x : generate (x * 2)