module MapaComfuncoes (imprimirResultados,meuMapa) where

import qualified Data.Map as Map
import Cubo (cubo)
import SomaTres (somaTres)
import FuncaoQuadratica (quadratica)


-- Tipo do mapa
type MapaFuncoes = Map.Map String (Double)


-- Criando o mapa com as funções e seus parâmetros
meuMapa :: MapaFuncoes
meuMapa = Map.fromList 
    [ ("cubo", cubo 3)  -- Convertendo Int para Double, se necessário
    , ("somaTres", somaTres 30 10 20)  -- Exemplo com dois parâmetros fixos
    , ("quadratica",  quadratica 2.0 2 1 3)  -- Convertendo Int para Double
    ]


-- Função para aplicar e imprimir os resultados
imprimirResultados :: MapaFuncoes -> IO ()
imprimirResultados mapa = 
    let x = 3  -- Definindo um valor fixo para x
    in Map.foldrWithKey (\nome func acc -> do
        let resultado = func 
        putStrLn $ nome ++ " de : " ++ show resultado
        acc) (return ()) mapa

