import Cubo (cubo)
import SomaTres (somaTres)

main :: IO ()
main = do
    let x = 3
    putStrLn ("O cubo de " ++ show x ++ " é: " ++ show (cubo x))
    putStrLn ("a soma de 1.5 +2.5 + 3.5 e :" ++ show (somaTres 1.5 2.5 3.5))
    
