module CustomOperators where

-- The operators always are infix and binary (2 arguments)
-- but they can be used like functions with backticks

-- There are two ways to define a customer operator: prefix and infix forms.

-- Prefix form:
(+++) a b = a + b -- Note the surrounding parentheses

-- Infix from:
a ++++ b = a + b

-- Fixity only affects a function when is used in infix form (operator)
-- and the infixity default is infixl 9. In the next example, my custom operator
-- has highet precedence that + and * operators.
result = 1 + 3 * 2 -- 7
result' = 1 +++ 3 * 2 -- 8

-- The fixity is defined with: <fixity> <precedence> <name>
-- where fixity: infixl, infixr, infix
-- precedence: number between 0 and 9
-- name: operator or function with backticks
infixl 6 +++++
a +++++ b = a + b
result'' = 1 +++++ 3 * 2 -- Now the precedence is same than (+), so the result is 7

-- Some rules of parsing
-- The function application has higher precedence than any operator
-- The operator with higher precedence will be first application
-- If the operators have the same precedence and same associativity, the applications follow the associativity
-- if the operators have the same precedence and different associativity, we will get an error. We should indicate which operation is first with parentheses o ($)

-- The operatos without associativity need parentheses, because Haskell can't determine
-- error = True == True == False -- This generate an error
result2 = True == (True == False)

