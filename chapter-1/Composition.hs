module Composition where

addOne num = num + 1
timesTwo num = num * 2
squared num = num * num
minusFive num = num - 5

-- Without composition, we need to save each result in
-- intermediate variables and later use them for generating the final result
result1 = addOne 1
result2 = timesTwo result1
result3 = squared result2
final = minusFive result3

-- With composition, we use parentheses to call ona function directly with
-- the output of another function
findResult num = minusFive (squared (timesTwo (addOne num)))

-- The application operator ($) allows apply the function on the left-hand side
-- to the value on the right-hand side. It's same as wrapping everything after the ($)
-- in parentheses. Its infixr!!!!!.
-- The trick is that operator has very low precedence
example1 = addOne (timesTwo 1)
example1' = addOne $ timesTwo 1

findResult' num = minusFive $ squared $ timesTwo $ addOne num

-- The composition operator (.) is infixr, receive two functions and return
-- a new function with one parameter. The parameter is passed to the right-hand function
-- and its output is passed to the left-hand function
-- This operator has a high precedence (9)
timesTwoPlusOne num = timesTwo (addOne num)
timesTwoPlusOne' = timesTwo . addOne

findResult'' = minusFive . squared . timesTwo . addOne

