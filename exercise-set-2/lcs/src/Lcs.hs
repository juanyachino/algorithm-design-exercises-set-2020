module Lcs where

import Data.List
import Data.Function


--to do 
lcsDecrease :: Eq a => [a] -> [a] -> [a]
lcsDecrease xs ys = []

--get subsequences
subseq :: [a] -> [[a]]
subseq xs = sortBy (compare `on` length) $ subsequences xs

--Longest common subsequence using brute force
lcsBf :: Eq a => [a] -> [a] -> [a]
lcsBf xs ys = maximumBy (compare `on` length) (filter (\x -> elem x (subseq ys)) (subseq xs))
