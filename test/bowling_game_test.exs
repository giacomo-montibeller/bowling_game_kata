defmodule BowlingGameTest do
  use ExUnit.Case, async: true

  describe "calling score" do
    test "for empty game will return 0" do
      assert BowlingGame.score() == 0
    end
  end
end
