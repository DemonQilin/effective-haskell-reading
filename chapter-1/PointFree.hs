module PointFree where

makeGreeting salutation person = salutation <> " " <> person

-- Apply n-reduction once (remove second parameter)
makeGreeting' salutation =  ((salutation <> " ") <>)

-- Rewrite n-reduction with prefix form
makeGreeting'' salutation = (<>) (salutation <> " ")

-- Point free version (implicity parameters)
freeMakeGreeting = (<>) . (<> " ")

