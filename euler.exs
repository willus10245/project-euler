defmodule Euler do
  def even_fib(sum, {first, _}) when first > 4000000 do
    IO.puts sum
  end

  def even_fib(sum, {first, last}) do
    new = first + last
    if rem(new, 2) === 0 do
      even_fib(sum + new, {new, first})
    else
      even_fib(sum, {new, first})
    end
  end
end

Euler.even_fib(0, {1,1})