module Ube10_06 where

--Aufgabe(a) fibInit : n-te Fibonacci Zahl
fibInit :: Int -> Int -> Int -> Int
fibInit a0 a1 0 = a0
fibInit a0 a1 1 = a1
fibInit a0 a1 n = fibInit a0 a1 (n-1) + fibInit a0 a1 (n-2)

--Aufgabe(b)
fibInit2 :: Int -> Int -> Int -> Int
fibInit2 a0 a1 0 = a0
fibInit2 a0 a1 1 = a1
fibInit2 a0 a1 n = (fibInitL a0 a1 n !! (n-2)) + (fibInitL a0 a1 n !! (n-1))

fibInitL :: Int -> Int -> Int -> [Int]
fibInitL a0 a1 0 = [a0]
fibInitL a0 a1 1 = [a0, a1]
fibInitL a0 a1 n
    | n < 0 = []
    | otherwise = (fibInitL a0 a1 (n-1)) ++ [fibInit2 a0 a1 n]

--Aufgabe(c) normalize xs
normalize :: [Int] -> [Int]
normalize (x:xs) = [x - (mnHelper x xs) | x <- (x:xs)]
    where mnHelper :: Int -> [Int] -> Int
          mnHelper m [] = m
          mnHelper m (y:ys)
            | m < y = mnHelper m ys
            | otherwise = mnHelper y ys
            
--Aufgabe(d) sumMaxs xs
sumMaxs :: [Int] -> Int
sumMaxs [] = 0
sumMaxs [x] = x
sumMaxs (x : xs) = x + restMax(xs)
    where restMax :: [Int] -> Int
          restMax [x] = x
          restMax (x : xs) | (restMax xs) > x = restMax xs
                           | otherwise = x
                           
--Aufgabe(e) sumNonMins xs
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
                   
--Aufgabe(f) primeTwins x         
primeTwins :: Int -> (Int, Int)
primeTwins 0 = (1,3)
primeTwins 1 = (3,5)
primeTwins x = verGleich (x+1)
      where
        verGleich :: Int ->  (Int, Int)
        verGleich y
            | prime (y) && prime (y+2) = (y, y+2)
            | otherwise = verGleich (y+1)

prime :: Int -> Bool
prime 0 = False
prime 1 = False
prime 2 = True
prime n = primeTest n (n-1)

primeTest :: Int -> Int -> Bool
primeTest n m | m==1 = True
              | (rem n m == 0) = False
              | otherwise = primeTest n (m-1)
              
--Aufgabe(e) multiples xs i0 i1                
multiples :: [Int] -> Int -> Int -> [Int]
multiples [] _ _ = []
multiples (x:y:ys) a b
      | a > b = []
      | (rem a x == 0 || rem a y == 0) = a:multiples (x:y:ys) (a+1) b
      | otherwise = multiples (x:y:ys) (a+1) b