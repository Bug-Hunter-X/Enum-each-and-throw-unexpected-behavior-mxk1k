# Elixir Enum.each and throw

This example demonstrates an uncommon issue with `Enum.each` and `throw` in Elixir.  `throw` is intended to stop execution of a function, but within `Enum.each`, it does not exit immediately from the loop. The `IO.puts("Finished")` line still executes.

The solution shows how to properly handle such cases, either by using `Enum.reduce` or catching the exception within a `try...catch` block.