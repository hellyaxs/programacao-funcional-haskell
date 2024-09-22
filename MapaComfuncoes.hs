module MapaComfuncoes (imprimirResultados,meuMapa) where

import qualified Data.Map as Map
import Cubo (cubo)
import SomaTres (somaTres)
import FuncaoQuadratica (quadratica)
import InverterLista (inverterLista)


data Resultado = RDouble Double | RLista [Int]
inverterListaIO :: [Int] -> IO Resultado
inverterListaIO lista = return $ RLista (inverterLista lista)

-- Tipo do mapa
type MapaFuncoes = Map.Map String (IO Resultado)


-- Criando o mapa com as funções e seus parâmetros
meuMapa :: MapaFuncoes
meuMapa = Map.fromList 
    [ ("cubo", return $ RDouble  (cubo 3))  
    , ("somaTres", return $ RDouble  (somaTres 30 10 20))  
    , ("quadratica", return $ RDouble (quadratica 2.0 2 1 3))
    , ("InverterLista",  inverterListaIO [1, 2, 3, 4, 5])  
    ]


-- Função para aplicar e imprimir os resultados
imprimirResultados :: MapaFuncoes -> IO ()
imprimirResultados mapa = 
  Map.foldrWithKey (\nome func acc -> do
        resultado <- func  -- Extrai o valor de IO Resultado
        let output = case resultado of
                RDouble val -> nome ++ " resultou em: " ++ show val
                RLista lista -> nome ++ " resultou em: " ++ show lista
        putStrLn output
        acc) (return ()) mapa

