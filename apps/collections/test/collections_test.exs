defmodule CollectionsExerciseTest do
  use ExUnit.Case
  doctest Collections

  test "capitalize 1" do
    assert Collections.Exercises.capitalize(["elixir", "rocks"]) == ["Elixir", "Rocks"]
  end

  test "capitalize 2" do
    assert Collections.Exercises.capitalize([]) == []
  end

  test "capitalize 3" do
    assert Collections.Exercises.capitalize(["Elixir", "Rocks"]) == ["Elixir", "Rocks"]
  end

  test "capitalize 4" do
    assert Collections.Exercises.capitalize(["Elixir", "really", "rocks"]) == ["Elixir", "Really", "Rocks"]
  end

  test "even 1" do
    assert Collections.Exercises.even([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
  end

  test "even 2" do
    assert Collections.Exercises.even([]) == []
  end

  test "even 3" do
    assert Collections.Exercises.even([1, 1, 3, 3, 5, 7]) == []
  end

  test "even 4" do
    assert Collections.Exercises.even([2, 2, 2, 2]) == [2, 2, 2, 2]
  end

  # test "long_word 1" do
  #   assert Collections.Exercises.long_word(["we", "the", "people"]) == "people"
  # end

  # test "long_word 2" do
  #   assert Collections.Exercises.long_word([]) == []
  # end

  # test "long_word 3" do
  #   assert Collections.Exercises.long_word(["ok", "ok", "KO"]) == "ok"
  # end

  # test "long_word 4" do
  #   assert Collections.Exercises.long_word(["OK", "OK", "123"]) == "123"
  # end
end
