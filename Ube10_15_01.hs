module Ube10_15_01 where

a :: Int
a = 1

b :: Int
b = 2

c :: Int
c = 3

xs :: [Int]
xs = [1,2,3]

ys :: [Int]
ys = [3,4,5]

--listProd :: [Int] -> Int
--listProd [] = 1
--listProd (x:xs) = x * listProd xs
--
--everySecond :: [Int] -> [Int]
--everySecond [] = []
--everySecond [x] = [x]
--everySecond (x:_:xs) = x : everySecond xs
--
--minus10 :: [Int] -> [Int]
--minus10 [] = []
--minus10 (x:xs) = x-10 : minus10 xs

{--
Tutor 3
(a)
* ++ append 연산 : 앞의 리스트와 뒤의 리스트를 합쳐준
* : 리스트의 앞에 추가. 예) [1,2,3] = 1:2:3:[]
xs = [1,2,3]
[] ++ [xs] = [[1,2,3]]
[] : [xs] = [[], [1,2,3]]

(b)
[[]] ++ [x]=[] : [x]
nicht Typkorrekt, da sie sowohl eine Liste, als auch einen Int Wert enthählt

(c)

(d)
x:y:z:(xs ++ ys) = [x,y,z] ++ xs ++ ys

 -}
--}








