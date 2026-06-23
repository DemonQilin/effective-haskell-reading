module Loops where

fizzBuzzFor num
 | 0 == rem num 15 = "fizzbuzz"
 | 0 == rem num 5 = "buzz"
 | 0 == rem num 3 = "fizz"
 | otherwise = show num

-- The loops is a recursive call with new values
-- The case when a recursive call is ended, it's the base case
naiveFizzBuzz limit num result =
  if num > limit
  then result
  else
    let nextResult = result <> fizzBuzzFor num <> " "
        nextNum = num + 1
    in naiveFizzBuzz limit nextNum nextResult

