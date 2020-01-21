module Ube10_05 where

--Aufgabe 6-(d)
sumMaxs :: [Int] -> Int
sumMaxs [] = 0
sumMaxs [x] = x
sumMaxs (x : xs) = x + restMax(xs)
    where restMax :: [Int] -> Int
          restMax [x] = x
          restMax (x : xs) | (restMax xs) > x = restMax xs
                           |  otherwise = x
--Aufgabe 6-(e)
sumNonMin :: [Int] -> Int
sumNonMin []  = 0
sumNonMin [x] = x
sumNonMin (x : xs) = x + restNonMin(xs) (restMin (xs))
    where 
          restNonMin :: [Int] -> Int -> Int
          restNonMin [] a = 0
          restNonMin (x : xs) a | x > a = x + restNonMin xs a
                                | x <= a = restNonMin xs a  
          restMin :: [Int] -> Int
          restMin [x] = x
          restMin (x : xs) | (restMin xs) < x = restMin xs
                           |  otherwise = x


multiples :: [Int] -> Int -> Int -> [Int]
multiples [] _ _ = []
multiples (x:xs) i0 i1 = multiCheck (x:xs) i0 i1
  where
    multiCheck :: [Int] -> Int -> Int -> [Int]
    multiCheck [] _ _ = []
    multiCheck (x:xs) i0 i1
        | rem i1 x == 0 && i1 >= i0 = i1 :multiCheck xs i0 i1
        | otherwise = multiCheck (x:xs) i0 (i1-1)