module InverterLista (inverterLista) where


-- Função para inverter uma lista
inverterLista :: [Int] -> [Int]
inverterLista [] = []
inverterLista (x:xs) = inverterLista xs ++ [x]
