defmodule Secrets do
  def secret_add(secret) do
    &(&1 + secret)
  end

  def secret_subtract(secret) do
    fn minuend ->
      minuend - secret
    end
  end

  def secret_multiply(secret) do
    fn factor ->
      factor * secret
    end
  end

  def secret_divide(secret) do
    &(trunc(&1 / secret))
  end

  def secret_and(secret) do
    &(Bitwise.band(secret, &1))
  end

  def secret_xor(secret) do
    &(Bitwise.bxor(secret, &1))
  end

  def secret_combine(secret_function1, secret_function2) do
    fn factor ->
      secret_function2.(secret_function1.(factor))
    end
  end
end
