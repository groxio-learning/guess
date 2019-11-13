# Guess

Mastermind implementation

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
[guess] ➔ git init
Initialized empty Git repository in /Users/batate/india/guess/.git/
[guess] (master #) ➔ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	.formatter.exs
	.gitignore
	README.md
	config/
	lib/
	mix.exs
	test/

nothing added to commit but untracked files present (use "git add" to track)
[guess] (master #) ➔ git add . 
[guess] (master +) ➔ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   .formatter.exs
	new file:   .gitignore
	new file:   README.md
	new file:   config/config.exs
	new file:   lib/board.ex
	new file:   lib/boundary.ex
	new file:   lib/guess.ex
	new file:   mix.exs
	new file:   test/board_test.exs
	new file:   test/guess_test.exs
	new file:   test/test_helper.exs

[guess] (master +) ➔ git commit . -m "initial mastermind"
[master (root-commit) 5b0e602] initial mastermind
 11 files changed, 212 insertions(+)
 create mode 100644 .formatter.exs
 create mode 100644 .gitignore
 create mode 100644 README.md
 create mode 100644 config/config.exs
 create mode 100644 lib/board.ex
 create mode 100644 lib/boundary.ex
 create mode 100644 lib/guess.ex
 create mode 100644 mix.exs
 create mode 100644 test/board_test.exs
 create mode 100644 test/guess_test.exs
 create mode 100644 test/test_helper.exs
g/guess.gitster) ➔ git add remote origin https://github.com/groxio-learnin 
fatal: pathspec 'remote' did not match any files
g/guess.gitster) ➔ git remote add origin https://github.com/groxio-learnin 
[guess] (master) ➔ git status
On branch master
nothing to commit, working tree clean
[guess] (master) ➔ git push -u origin master
Enumerating objects: 16, done.
Counting objects: 100% (16/16), done.
Delta compression using up to 12 threads
Compressing objects: 100% (13/13), done.
Writing objects: 100% (16/16), 3.26 KiB | 3.26 MiB/s, done.
Total 16 (delta 0), reused 0 (delta 0)
To https://github.com/groxio-learning/guess.git
 * [new branch]      master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.
[guess] (master=) ➔ mix test
Compiling 1 file (.ex)
warning: variable "guesses" does not exist and is being expanded to "guesses()", please use parentheses to remove the ambiguity or change the variable name
  lib/board.ex:9

warning: variable "board" is unused (if the variable is not meant to be used, prefix it with an underscore)
  lib/board.ex:8


== Compilation error in file lib/board.ex ==
** (CompileError) lib/board.ex:5: undefined function \\/2
    (elixir) src/elixir_locals.erl:107: :elixir_locals."-ensure_no_undefined_local/3-lc$^0/1-0-"/2
    (elixir) src/elixir_locals.erl:107: anonymous fn/3 in :elixir_locals.ensure_no_undefined_local/3
    (stdlib) erl_eval.erl:680: :erl_eval.do_apply/6
[guess] (master *=) ➔ mix test
Compiling 1 file (.ex)
warning: variable "guesses" does not exist and is being expanded to "guesses()", please use parentheses to remove the ambiguity or change the variable name
  lib/board.ex:9

warning: variable "board" is unused (if the variable is not meant to be used, prefix it with an underscore)
  lib/board.ex:8


== Compilation error in file lib/board.ex ==
** (CompileError) lib/board.ex:9: undefined function guesses/0
    (elixir) src/elixir_locals.erl:107: :elixir_locals."-ensure_no_undefined_local/3-lc$^0/1-0-"/2
    (elixir) src/elixir_locals.erl:107: anonymous fn/3 in :elixir_locals.ensure_no_undefined_local/3
    (stdlib) erl_eval.erl:680: :erl_eval.do_apply/6
[guess] (master *=) ➔ mix test
Compiling 1 file (.ex)
...

  1) test makes move (BoardTest)
     test/board_test.exs:12
     ** (BadMapError) expected a map, got: [[1, 2, 3, 4]]
     code: |> Map.get(:guesses)
     stacktrace:
       (elixir) lib/map.ex:437: Map.get([[1, 2, 3, 4]], :guesses, nil)
       test/board_test.exs:18: (test)



Finished in 0.02 seconds
1 doctest, 3 tests, 1 failure

Randomized with seed 479447
[guess] (master *=) ➔ mix test
Compiling 1 file (.ex)
....

Finished in 0.02 seconds
1 doctest, 3 tests, 0 failures

Randomized with seed 637671
[guess] (master *=) ➔ mix test
....

Finished in 0.03 seconds
1 doctest, 3 tests, 0 failures

Randomized with seed 596463
[guess] (master *=) ➔ iex
Erlang/OTP 21 [erts-10.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> guess = [1, 2, 3, 4]
[1, 2, 3, 4]
iex(2)> answer = [1, 2, 5, 6]
[1, 2, 5, 6]
iex(3)> guess |> Enum.zip(answer)
[{1, 1}, {2, 2}, {3, 5}, {4, 6}]
iex(4)> guess |> Enum.zip(answer) |> Enum.filter(fn({x, y}) -> x == y end
...(4)> )
[{1, 1}, {2, 2}]
iex(5)> guess |> Enum.zip(answer) |> Enum.filter(fn({x, y}) -> x == y end)
[{1, 1}, {2, 2}]
iex(6)> guess |> Enum.zip(answer) |> Enum.filter(fn({x, y}) -> x == y end) |> Enum.count
2
iex(7)> answer = [1, 2, 3, 4]
[1, 2, 3, 4]
iex(8)> guess = [3, 4, 1, 2]
[3, 4, 1, 2]
iex(9)> misses = answer -- guess
[]
iex(10)> misses = (answer -- guess) |> length
0
iex(11)> misses = (answer -- guess) |> length
0
iex(12)> 
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
^C[guess] (master *=) ➔ mix test
Compiling 1 file (.ex)
Generated guess app

== Compilation error in file test/score_test.exs ==
** (CompileError) test/score_test.exs:1: cannot define module GuessTest because it is currently being defined in test/guess_test.exs:1
    (stdlib) erl_eval.erl:680: :erl_eval.do_apply/6
[guess] (master *=) ➔ mix test
......

Finished in 0.03 seconds
1 doctest, 5 tests, 0 failures

Randomized with seed 392839
[guess] (master *=) ➔ iex
Erlang/OTP 21 [erts-10.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> [1, 1, 1, 2] -- [1, 1, 6, 6]
[1, 2]
iex(2)> Enum.shuffle([1, 2, 3])
[1, 3, 2]
iex(3)> Enum.shuffle([1, 2, 3])
[3, 1, 2]
iex(4)> Enum.shuffle([1, 2, 3])
[1, 3, 2]
iex(5)> Enum.shuffle([1, 2, 3])
[3, 2, 1]
iex(6)> Enum.shuffle((1..3))   
[2, 1, 3]
iex(7)> Enum.shuffle((1..3))
[1, 3, 2]
iex(8)> Enum.shuffle((1..3))
[1, 2, 3]
iex(9)> Enum.shuffle((1..3)) |> Enum.take(2)
[3, 2]
iex(10)> Enum.shuffle((1..3)) |> Enum.take(2)
[2, 3]
iex(11)> Enum.shuffle((1..3)) |> Enum.take(2)
[2, 3]
iex(12)> Enum.shuffle((1..3)) |> Enum.take(2)
[1, 2]
iex(13)> Enum.shuffle((1..3)) |> Enum.take(2)
[1, 3]
iex(14)> keyword_list = []
[]
iex(15)> keyword_list[:answer]
nil
iex(16)> 
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
^C[guess] (master *=) ➔ mix test
Compiling 4 files (.ex)
warning: function Score.score/2 is undefined (module Score is not available)
  lib/board.ex:14

Generated guess app
..

  1) test detects game won (BoardTest)
     test/board_test.exs:23
     ** (UndefinedFunctionError) function Guess.Board.won?/1 is undefined or private
     code: |> Board.won?
     stacktrace:
       (guess) Guess.Board.won?(%Guess.Board{guesses: [[1, 2, 3, 4], [1, 2, 4, 3]], secret: [1, 2, 3, 4]})
       test/board_test.exs:29: (test)

....

Finished in 0.02 seconds
1 doctest, 6 tests, 1 failure

Randomized with seed 183770
[guess] (master *=) ➔ mix test
Compiling 1 file (.ex)
warning: function Score.score/2 is undefined (module Score is not available)
  lib/board.ex:14

...

  1) test detects game won (BoardTest)
     test/board_test.exs:23
     ** (UndefinedFunctionError) function Score.score/2 is undefined (module Score is not available)
     code: |> Board.won?
     stacktrace:
       Score.score([1, 2, 3, 4], [1, 2, 3, 4])
       (guess) lib/board.ex:14: Guess.Board.won?/1
       test/board_test.exs:29: (test)

...

Finished in 0.02 seconds
1 doctest, 6 tests, 1 failure

Randomized with seed 219469
[guess] (master *=) ➔ mix test
Compiling 1 file (.ex)
.......

Finished in 0.02 seconds
1 doctest, 6 tests, 0 failures

Randomized with seed 181773
[guess] (master *=) ➔ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   lib/board.ex
	modified:   lib/boundary.ex
	modified:   test/board_test.exs

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	lib/score.ex
	test/score_test.exs

no changes added to commit (use "git add" and/or "git commit -a")
[guess] (master *=) ➔ git add . 
[guess] (master +=) ➔ git commit -m "add score and board to test"
[master b2c1852] add score and board to test
 5 files changed, 103 insertions(+)
 create mode 100644 lib/score.ex
 create mode 100644 test/score_test.exs
[guess] (master>) ➔ git push
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 12 threads
Compressing objects: 100% (9/9), done.
Writing objects: 100% (9/9), 1.54 KiB | 1.54 MiB/s, done.
Total 9 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/groxio-learning/guess.git
   5b0e602..b2c1852  master -> master
[guess] (master=) ➔ 
```

