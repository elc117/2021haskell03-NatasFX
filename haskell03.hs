-- Prática 03 de Haskell
-- Nome: Natã Schmitt

add10toall :: [Int] -> [Int]
add10toall l = [x+10 | x <- l]

multN :: Int -> [Int] -> [Int]
multN n l = [x*n | x <- l]

multN' :: Int -> [Int] -> [Int]
multN' n = map (n*)

applyExpr :: [Int] -> [Int]
applyExpr l = [3*x+2 | x <- l]

applyExpr' :: [Int] -> [Int]
applyExpr' = map (\x -> 3*x+2)

addSuffix :: String -> [String] -> [String]
addSuffix s l = [x++s | x <- l]

selectgt5 :: [Int] -> [Int]
selectgt5 l = [x | x <- l , x>5]

sumOdds :: [Int] -> Int
sumOdds l = sum [x | x <- l, odd x]

sumOdds' :: [Int] -> Int
sumOdds' l = sum (filter odd l)

selectExpr :: [Int] -> [Int]
selectExpr l = [x | x <- l, elem x [20,22..50]]

countShorts :: [String] -> Int
countShorts l = length [x | x <- l, length x < 5]

calcExpr :: [Float] -> [Float]
calcExpr l = [x^2/2 | x <- l, x^2/2 > 10]

trSpaces :: String -> String
trSpaces l = [if x == ' ' then '-' else x | x <- l]

selectSnd :: [(Int,Int)] -> [Int]
selectSnd l = [snd x | x <- l]

dotProd :: [Int] -> [Int] -> Int

dotProd l1 l2 = sum [fst x * snd x | x <- zip l1 l2]
