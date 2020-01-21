module Ube10_01 where

absteigend :: Int -> [Int] 
absteigend 0 = []
absteigend n = n : absteigend (n-1)

produkt :: [Int] -> Int
produkt [] = 1
produkt (x:xs) = x * produkt xs

summe :: [Int] -> Int
summe xs = summe' xs 0
    where summe' [] a = a
          summe' (x:xs) a = summe' xs (a+x)
          

{- produkt: p / absteigend: a / summe: s / summe': s'

--Aufgabe 01 -1: produkt(absteigend 2)
  p ( a 2)
->p ( 2 : a 1)
->p ( 2 : 1 : a 0 )
->p ( 2 : 1 : [] )
->2 * p ( 1 : [] )
->2 * 1 * p [] 
->2 * 1 * 1
= 2 

--Aufgabe 01 -1: summe(absteigend 2)
  s ( a 2 )
->s ( a 2)
->s ( 2 : a 1 )
->s ( 2 : 1 : a 0 )
->s ( 2 : 1 : [] )
->s'( 2 : 1 : [] ) 0
->s'( 1 : [] ) ( 0 + 2 )
->s'([]) (2 + 1)
= 3



-}

