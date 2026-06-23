module ConditionalsWithBranches where

-- The if stucture is a expression, that means to be return a value
-- This value must be the same type in each branch
onlyGreetAdults age =
  if age > 18
  then putStrLn $ "Hello Adult, your age is " <> show age
  else putStrLn "Your are not adult!"

-- In this example, I discover the Layout Rule
-- In let/where the body of a statement must be more indented that name in definition.
-- In this case: if after the msg
printSmallNumber num =
  let msg = if num < 10
            then show num -- If we use `then num` will throw error because the type is different of the other branch
            else "the number is too big!"
  in putStrLn msg

-- Haskell doesn't have a special syntax for chaining multiple if expresion
-- but they can be nested
sizeNumber num =
  if num < 3
  then "that's a small number"
  else
    if num < 10
    then "that's a medium sized number"
    else "that's a big number"

-- Functions with guards
-- The guards are more comfortable syntax to evaluate with conditionals
-- The syntax is: | <predicate> = <body>
-- The evaluation orden is from top to bottom, caution with broad predicates in top
guardSize num
  | num < 3 = "that's a small number"
  | num < 10 = "that's a medium number"
  | num < 100 = "that's a pretty big number"
  | num < 1000 = "wow, that's a giant number"
  | otherwise = "that's an unfathomably big number" -- key word that is always True

