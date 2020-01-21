module Ube10_15_05 where

mul ::Int -> Int -> Int
mul _ 0 = 0
mul x y = x + mul x (y-1)
-- 2 * 3  = 2 + 2  +2

-- log 1 = 0 / log 5 = 3 / log 32 = 5 / + *만 사용 가능
--getLastTwo :: [Int] -> [Int]
--getLastTwo [x,y] = [x,y]
--getLastTwo [_:x:xs] = getLastTwo [x:xs]

singletone :: Int -> [[Int]]
singletone 0 = []
singletone n = [n] : singletone(n-1)

packing :: [[Int]] -> [Int] -> [[Int]]
packing [] _ = []
packing xs [] = xs
packing ([]: xs) (y:ys) = [y] : packing xs ys
packing (x:xs) (y:ys) = x : packing xs ys

listAdd:: Int -> [Int] -> [Int]
listAdd _ [] = []
listAdd z (x:xs) = (z+x) : listAdd x xs



