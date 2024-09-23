module InverterLista (inverterLista) where


-- Função para inverter uma lista
inverterLista :: [Double] -> [Double]
inverterLista [] = []
inverterLista (x:xs) = inverterLista xs ++ [x]
