module Exercises where

-- Exercise 1
factorial n
  | n == 0 = 1
  | n == 1 = 1
  | otherwise = n * factorial (n - 1)

-- Exercise 2
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fibonacci (n - 2) + fibonacci (n - 1)

-- Exercise 3
myCurry f = \a -> \b -> f (a, b)

iaCurry f a b = f (a, b) -- More idiomatic

myUncurry f tuple =
  let a = fst tuple
      b = snd tuple
  in f a b

iaUncurry f (a, b) = f a b -- Use pattern matching

