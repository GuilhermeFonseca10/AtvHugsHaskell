--1
calcCirc :: Float -> Float
calcCirc r
    | r <= 0 = error "O raio deve ser um número positivo."
    | otherwise = pi * (r ** 2)

--teste calcCirc 3
--28.27433

--2
checkValue :: (Num a, Ord a) => a -> Int
checkValue x
    | x > 0     = 1
    | x < 0     = -1
    | otherwise = 0

--teste checkValue 5, checkValue (-3), checkValue 0
--Saída: 1, Saída: -1, Saída: 0

--3
calculate :: Char -> Float -> Float -> Either String Float
calculate op n1 n2
    | op == '*' = Right (n1 * n2)
    | op == '/' = if n2 /= 0 then Right (n1 / n2) else Left "Erro: Divisão por zero."
    | op == '-' = Right (n1 - n2)
    | op == '+' = Right (n1 + n2)
    | otherwise = Left "Erro: Operação inválida."

--teste (*) 5 5, (/) 5 5, (-) 5 5, (+) 5 5
-- 25, 1, 0 10

--4

retornaSup :: Int -> [Int] -> Int
retornaSup n lista = length (filter (> n) lista)

--teste retornaSup 5 [3, 2, 5, 6, 9]
--2

--5

retornaListaSup :: Int -> [Int] -> [Int]
retornaListaSup n lista = filter (> n) lista

--teste retornaListaSup 5 [3, 2, 5, 6, 9]
--[6, 9]



