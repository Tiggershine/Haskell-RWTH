module Varfun where

-- Folien 3-2
len :: [Int] -> Int
len [] = 0
len (kopf : rest) = 1 + len rest

-- Typdeklaration이 필수는 아니다. But 명시하는 것이 좋은 Style
square :: Int -> Int
square x = x * x
-- square: Variabl / x: Pattern(원하는 Exp을 위한 Argument) / x * x: Expression


maxi :: (Int, Int) -> Int
maxi (x,y) | x >= y    = x
           | otherwise = y

--plus :: (Int, Int) -> Int
--plus (x, y) = x + y
-- Currying: 다변수 함수 -> 한 개의 변수로 이뤄진 함 수
-- 위의 plus 함수는 변수로 x,y를 받지만,
-- 아래의 plus 함수는 (1) 'plus x'라는 함수 생성 (2) 'plus x'에 y를 더한다.
plus :: Int -> Int -> Int
plus x y = x + y


und :: Bool -> Bool -> Bool
und True y = y
und x    y = False

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact(n-1)
-- fact 3의 계산과정 
-- 3은 0이 아니기 때문에 2의 계승을 계산한다
--   2는 0이 아니기 때문에 1의 계승을 계산한다
--      1은 0이 아니기 때문에 0의 계승을 계산한다
--         0은 0이므로 1을 반환한다
--      1의 계승 계산을 완성하기 위해 현재 수 1에 0의 계승인 1을 곱하여 1(1×1)을 얻는다.
--   2의 계승 계산을 완성하기 위해 현재 수 2에 1의 계승인 1을 곱하여 2(2×1×1)을 얻는다.
-- 3의 계승 계산을 완성하기 위해 현재 수 3에 2의 계승인 2를 곱하여 6(3×2×1×1)을 얻는다.

-- 1:2:3:4:5:[] = [1,2,3,4,5]
numbers = 1:2:3:4:5:[]
-- 리스트 안에 리스트가 원소로 올 수 있다. ( [ 1 , [2,3] ] 은 Typ 오류)
numbers2 = [[1,2], [3,4,5]]


listProd :: [Int] -> Int
listProd [] = 1
listProd (x : xs) = x * listProd xs


lucky :: (Integral a) => a -> String
lucky 7 = "Lucky Number Seven"
lucky x = "Sorry, You're out of Luck, pal"

