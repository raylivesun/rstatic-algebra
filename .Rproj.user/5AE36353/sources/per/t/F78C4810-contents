#!/usr/bin/r

typeof(defaultPrototype()) #-> "S4"

## .classEnv()
meth.ns <- asNamespace("methods")
if(get4 <- !any("package:stats4" == search()))
  require("stats4")
stopifnot(TRUE
          , identical(.classEnv("data.frame"), meth.ns)
          , identical(.classEnv(class(new("data.frame"))), meth.ns)
          , identical(.classEnv(     "mle"       ), meth.ns) # <- *not* 'stats4'
          , identical(.classEnv(class(new("mle"))), asNamespace("stats4"))
          , identical(.classEnv(getClass ("mle") ), asNamespace("stats4"))
)
if(get4) detach("package:stats4")
