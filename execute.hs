import Cubo (cubo)

main :: IO ()
main = do
    let x = 3
    putStrLn ("O cubo de " ++ show x ++ " é: " ++ show (cubo x))
    
