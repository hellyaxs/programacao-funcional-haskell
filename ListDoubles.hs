module ListDoubles (doubles) where

doubles :: [Double]
doubles = generate 10
    where
        generate x = x : generate (x * 2)