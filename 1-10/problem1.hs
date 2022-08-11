-- problem1.hs
{-
Problem
Find the last element of a list

test data
λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
'z'
-}

--Solution 1 : Recursing to the last element, note:: Create a base for the last element
myLast        :: [a] -> a
myLast [x]    = x
myLast (_:xs) = myLast xs

--Solution 2 : Reversing the list then taking the head of the list
myLast'    :: [a] -> a
myLast' xs = head (reverse xs) 

--Solution 3 : This is a tricky one
myLast'' xs = foldr1 (const id) xs

--Solution 4 : 
myLast''' xs = foldr1 (flip const) xs

--Solution 5
myLast'''' xs =  foldl1 (curry snd) xs

--Solution 6 : (!!) function gets the element of the element's index in a list
-- The solution supposes that you get the given element based on the index provided 
myLast''''' [] = error "Empty list"
myLast''''' xs = xs !! (length xs -1)