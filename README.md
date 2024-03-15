# ProjectEuler

My solutions to Project Euler problems in various languages, such as Python, Julia, etc.

## Disclaimer

Please don't copy my solutions, think about them all by yourself!

Please don't ban my account, I'm not spoiling solutions to problems! I'm just trying to improve on mathematics and programming and want to document my journey.

## Running solutions

### Interpreted

-   **Julia, Python, Ruby**: name of the language + the file you want to run
-   **JavaScript**: `node <FILE>`

### Compiled

-   **C**: `gcc -o out <FILE>`
    -   instead of `gcc` you can use `clang`
    -   instead of `out` you can call it whatever you want
    -   you can output it to a directory as well
    -   you can add `-Wall` to see compiler warnings

## Commit message pattern

`#2 (Julia): Add solution`

-   `#2` - problem number
    -   `#2, #3` - commit can affect multiple problems
-   `(Julia)` - the implementation language
    -   `(C, Python)` - commit can affect multiple implementations
-   `Add solution` - summary of the changes

Alternatively, the commit message can ignore this pattern for general changes
