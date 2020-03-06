defmodule BowlingGame do
  def score() do
    0
  end

  def score([[]]) do
    0
  end

  def score([[first, second]]) do
    first + second
  end

  def score([[first, _second], [third, fourth] | tail]) when first == 10 do
    10 + third + fourth + score([[third, fourth]]) + score([tail])
  end

  def score([[first, second], [third, fourth] | tail]) when first + second == 10 do
    10 + third + score([[third, fourth]]) + score([tail])
  end

  def score([[first, second] | tail]) do
    first + second + score(tail)
  end
end
