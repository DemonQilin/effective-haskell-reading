module LetBindings where

-- The let bindings allow us give name to some particular expressions
makeGreeting salutation person =
  let messageWithTrailingSpace = salutation <> " "
  in messageWithTrailingSpace <> person

-- Multiple variables are allowed in a let binding
extendedGreeting person =
  let hello = makeGreeting "Hello" person
      goodDay = makeGreeting "I hope you have a nice afternoon" person
      goodBye = makeGreeting "See you later" person
  in hello <> "\n" <> goodDay <> "\n" <> goodBye

-- The let bindings can reference a bindings define later
-- The expresion of a binding can be functions
dragonBallGreeting person =
  let buildGreeting salutation suffix = salutation <> suffix
      salutation = "Hola " <> person <> ", "
      gokuSuffix = "soy Goku"
  in buildGreeting salutation gokuSuffix

-- The let binding can be nested
doubleOtakuGreeting person =
  let joinWithNewlines a b = a <> "\n" <> b
      makeOtakuGreeting character =
        "Hola " <> person <> ", soy " <> character
      otakuGreetings character1 character2 =
        let greeting1 = makeOtakuGreeting character1
            greeting2 = makeOtakuGreeting character2
        in joinWithNewlines greeting1 greeting2
  in otakuGreetings "Goku" "Saitama"

-- The where binding is very similar to let bingind, but its sintaxis is inversed
-- First expression and next the where bindings
-- Research Notes:
-- 	- Where has function scope but let has expression one
-- 	- Let is an expression, where is not
godExtendedGreeting person =
  godGreetings "Jesus" "Zeus"
  where
    godGreetings god1 god2 =
      joinWithNewlines greeting1 greeting2
      where
        joinWithNewlines a b = a <> "\n" <> b
        greeting1 = makeGodGreeting god1
        greeting2 = makeGodGreeting god2
        makeGodGreeting god =
          "Hola " <> person <> ", soy " <> god <> " ¿Cómo estás hijo mía?"

