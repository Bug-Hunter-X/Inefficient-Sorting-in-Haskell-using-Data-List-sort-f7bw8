```haskell
import Data.List (sort, insert)

--Improved efficiency for nearly sorted lists
improvedSort :: Ord a => [a] -> [a]
improvedSort [] = []
improvedSort (x:xs) = insert x (improvedSort xs)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  let zs = improvedSort xs
  print ys -- Output using Data.List.sort
  print zs -- Output using improvedSort

  let largeList = [1..100000] ++ [1000000] --Example of nearly sorted list
  let largeSorted = sort largeList
  let largeImprovedSorted = improvedSort largeList
  --print largeSorted -- Avoid printing large lists
  --print largeImprovedSorted -- Avoid printing large lists

  -- Benchmarking (optional):  For larger lists, compare the execution times of sort and improvedSort
```