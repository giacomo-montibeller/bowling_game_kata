defmodule BowlingGameTest do
  use ExUnit.Case, async: true

  describe "calling score" do
    test "for empty game will return 0" do
      assert BowlingGame.score() == 0
    end

    test "for simple frame (no spare or strike) will return the sum of the rolls" do
      assert BowlingGame.score([[1, 2]]) == 3
    end

    test "for more simple frames will return the sum of the rolls" do
      assert BowlingGame.score([[1, 2], [3, 4], [2, 2]]) == 14
    end

    test "for a spare frame will return the sum of the rolls plus the next roll" do
      assert BowlingGame.score([[8, 2], [3, 0]]) == 16
    end

    test "for a strike frame will return the sum of the rolls plus the next two rolls" do
      assert BowlingGame.score([[10, 0], [3, 3]]) == 22
    end
  end
end
