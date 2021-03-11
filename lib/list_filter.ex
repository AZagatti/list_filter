defmodule ListFilter do
  def call([]), do: 0

  def call(list) do
    list
    |> Stream.map(fn el -> convert_to_integer(Integer.parse(el)) end)
    |> Enum.count(fn el -> rem(el, 2) == 1 end)
  end

  defp convert_to_integer({num, _}), do: num
  defp convert_to_integer(_), do: 0
end
