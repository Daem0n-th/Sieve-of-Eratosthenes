import Data.List
main = do
    putStrLn "Prime Numbers till"
    n' <- getLine
    let n = read n' :: Int
    print $ [2..n] \\ ( foldl1 union (map (\x -> [ z | z <- [x*x,x*x+x..n]]) [2..floor$sqrt(fromIntegral n)]))
