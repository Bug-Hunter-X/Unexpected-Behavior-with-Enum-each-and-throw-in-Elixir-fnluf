# Elixir Bug: Enum.each and throw

This example demonstrates a potential issue when using `Enum.each` with `throw` in Elixir.  The `throw` function halts the execution of the `Enum.each` without executing the `IO.puts("done")` statement.  This might lead to debugging confusion if the developer expects all elements to be processed even when an error is thrown.

The solution shows a safer approach, using `Enum.reduce` and handling exceptions, thus preventing unexpected terminations.