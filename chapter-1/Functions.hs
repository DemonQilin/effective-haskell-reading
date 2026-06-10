module Functions where

makeGreeting salutation person =
  salutation <> " " <> person

-- The function definition is anonymous (use \)
lambdaMakeGreeting =
  \salutation person ->
    salutation <> " " <> person

-- In Haskell al functions only take a single argument,
-- the functions with multiples arguments are sugar for a chain of functions
-- And this is known as currying

-- The following functions are equivalent:
makeTruple a b c = (a,b,c)
makeTruple' =
  \a ->
    \b ->
      \c ->
        (a,b,c) -- Use lambdas for avoiding give names for each function

-- Since the functions with multiple arguments are function that return functions,
-- is possible pass ones less than total for get partially applied functions.
-- The functions that receive all of its argument are called "fully saturated"

greeting = makeGreeting "Hello" "Person" -- Fully saturated
paisaGreeting = makeGreeting "Que mas pues," -- Partially applied


-- The function application has the highest precedence and
-- is associate from left to right: f a b c => (f a) b c => (f' b) c => f'' c
makeGreetingWithFirstPerson = flip makeGreeting "Person"

main = print "no salutation to show yet"

