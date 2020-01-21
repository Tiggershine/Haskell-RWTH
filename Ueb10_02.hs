module Ueb10_02 where

--Aufgabe 02. produkt (jedesZweite (minus10 [3,2,1]))
{- produkt: p / jedesZweite: j / minus10: m
[Loesung]
  p ( j ( m [3,2,1]))
  p ( j ( 3-10 : m[2,1] ) )
  p ( j ( 3-10 : 2-10 : m[1] ) )  
  p ( 3-10 : j ( m[1] ) )
  (-7) * p ( j ( m[1] ) )
  (-7) * p ( j (1-10 : m[] ) )
  (-7) * p ( j (1-10 : [] ) )
  (-7) * p ( 1-10 : []  )
  (-7) * (1-10 * p[] )
  (-7) * ((-9) * p[] )
  (-7) * ((-9) * 1 ) )
 = 63 
-}


produkt :: [Int] -> Int
produkt [] = 1
produkt (x : xs) = x * produkt xs

jedesZweite :: [Int] -> [Int]
jedesZweite [] = []
jedesZweite [x] = [x]
jedesZweite (x:_:xs) = x : jedesZweite xs

minus10 :: [Int] -> [Int]
minus10 [] = []
minus10 (x:xs) = x - 10 : minus10 xs




