# Guess

**TODO: Add description**

## terminal

```
[india] ➔ mix new guess
* creating README.md
* creating .formatter.exs
* creating .gitignore
* creating mix.exs
* creating config
* creating config/config.exs
* creating lib
* creating lib/guess.ex
* creating test
* creating test/test_helper.exs
* creating test/guess_test.exs

Your Mix project was created successfully.
You can use "mix" to compile it, test it, and more:

    cd guess
    mix test

Run "mix help" for more commands.
[india] ➔ cd guess
[guess] ➔ atom . 
[guess] ➔ mix test
Compiling 3 files (.ex)

== Compilation error in file lib/board.ex ==
** (FunctionClauseError) no function clause matching in Kernel.struct/3    
    
    The following arguments were given to Kernel.struct/3:
    
        # 1
        [secret: [1, 2, 3, 4], guesses: []]
    
        # 2
        []
    
        # 3
        #Function<17.93580267/2 in Kernel.struct/2>
    
    Attempted function clauses (showing 4 out of 4):
    
        defp struct(struct, [], _fun) when is_atom(struct)
        defp struct(struct, fields, fun) when is_atom(struct)
        defp struct(%_{} = struct, [], _fun)
        defp struct(%_{} = struct, fields, fun)
    
    (elixir) lib/kernel.ex:2116: Kernel.struct/3
    lib/board.ex:2: (module)
    (stdlib) erl_eval.erl:680: :erl_eval.do_apply/6
[guess] ➔ mix test
Compiling 3 files (.ex)
Generated guess app
..

  1) test default struct has guesses and secret (BoardTest)
     test/board_test.exs:5
     ** (UndefinedFunctionError) function Boundary.Board.__struct__/0 is undefined (module Boundary.Board is not available)
     code: keys = Board.__struct__ |> Map.keys
     stacktrace:
       Boundary.Board.__struct__()
       test/board_test.exs:6: (test)



Finished in 0.02 seconds
1 doctest, 2 tests, 1 failure

Randomized with seed 122232
[guess] ➔ mix test
Compiling 1 file (.ex)
...

Finished in 0.02 seconds
1 doctest, 2 tests, 0 failures

Randomized with seed 390400
```

