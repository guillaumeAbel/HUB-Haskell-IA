module Lib
    ( findElemsInList,
        findElemInList,
        findListInList,
        cutBeforeElem,
        cutFromElem,
        cutAfterElem,
        catMaybes
    ) where

-- |List = [a]
-- |Elem = a

-- |Return the indexes of all occurence of the Elem in the List
findElemsInList :: (Eq a) => [a] -> a -> [Int]
findElemsInList str ch = [ y | (x, y) <- zip str [0..], x == ch]

searchElem :: (Eq a) => [a] -> a -> Int -> Int
searchElem [] _ _ = -1
searchElem (x:_) elem_ it | x == elem_ = it
searchElem (_:xs) elem_ it = searchElem xs elem_ (it + 1)

-- |Return the index of first occurence of the Elem in the List
findElemInList :: (Eq a) => [a] -> a -> Maybe Int
findElemInList [] _ = Nothing
findElemInList list elem_ = Just (searchElem list elem_ 0)

-- |Return the index of the fst occurence of the scd List in the fst List, trd param Int must be 0 at function call
findListInList :: (Eq a) => [a] -> [a] -> Int -> Maybe Int
findListInList [] _ _ = Nothing
findListInList _ [] _ = Nothing
findListInList str search incr
    | take (length search) str == search = Just incr
    | otherwise = Nothing

checkCanCut :: [a] -> Maybe Int -> Int -> Maybe [a]
checkCanCut [] _ _ = Nothing
checkCanCut list maybeFind addToFind = case maybeFind of
                              Just find -> Just (drop (find + addToFind) list)
                              Nothing -> Nothing

-- |Return the list cutted before the elem in param to end
cutBeforeElem :: (Eq a) => [a] -> a -> Maybe [a]
cutBeforeElem list delimiter = checkCanCut list (findElemInList list delimiter) (-1)

-- |Return the list cutted from the elem in param to end
cutFromElem :: (Eq a) => [a] -> a -> Maybe [a]
cutFromElem list delimiter = checkCanCut list (findElemInList list delimiter) 0

-- |Return the list cutted after the elem in param to end
cutAfterElem :: (Eq a) => [a] -> a -> Maybe [a]
cutAfterElem list delimiter = checkCanCut list (findElemInList list delimiter) 1

catMaybes :: [Maybe a] -> [a]
catMaybes ls = [x | Just x <- ls]
