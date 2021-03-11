defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns a count of odd in a list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)
      expected_response = 3

      assert response == expected_response

      list = ["3" | list]

      response = ListFilter.call(list)
      expected_response = 4

      assert response == expected_response
    end
  end
end
