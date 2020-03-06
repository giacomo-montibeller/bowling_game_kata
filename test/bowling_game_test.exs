defmodule BowlingGameTest do
  use ExUnit.Case, async: true

  describe "calling score" do
    test "for empty game will return 0" do
      assert BowlingGame.score() == 0
    end

    test "for single frame with roll 1,2 (no spare or strike) will return 3" do
      assert BowlingGame.score([1, 2]) == 3
    end
  end
end
