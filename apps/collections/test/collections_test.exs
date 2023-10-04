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

  test "long_word 1" do
    assert Collections.Exercises.long_word(["we", "the", "people"]) == "people"
  end

  test "long_word 2" do
    assert Collections.Exercises.long_word(["ok"]) == "ok"
  end

  test "long_word 3" do
    assert Collections.Exercises.long_word(["ok", "ok", "KO"]) == "KO"
  end

  test "long_word 4" do
    assert Collections.Exercises.long_word(["OK", "OK", "123"]) == "123"
  end

    test "age_groups 1" do
    assert Collections.Exercises.age_groups([%{name: "Sean", age: 33}, %{name: "Sarah", age: 33}, %{name: "Darren", age: 51}]) == %{"30-40" => ["Sean", "Sarah"], "50-60" => ["Darren"]}
  end

  test "age_groups 2" do
    assert Collections.Exercises.age_groups([]) == %{}
  end

  test "age_groups 3" do
    test_data = [%{name: "Sean", age: 33}, %{name: "Sarah", age: 33}, %{name: "Darren", age: 51}, %{name: "Mark", age: 1}]
    expected = %{"30-40" => ["Sean", "Sarah"], "50-60" => ["Darren"], "0-10" => ["Mark"]}
    assert Collections.Exercises.age_groups(test_data) == expected
  end

  test "age_groups 4" do
    assert Collections.Exercises.age_groups([%{name: "Sean", age: 0}]) == %{"0-10" => ["Sean"]}
  end

end
