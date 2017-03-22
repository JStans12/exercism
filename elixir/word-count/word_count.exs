defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r/[!|&|@|\$|%|\^|&|,]+/, "")
    |> String.split([" ", "_"])
    |> Map.new(fn (word) -> {word, occurances(word, sentence)} end)
    |> Map.delete(":")
  end

  def occurances(word, sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r/[!|&|@|\$|%|\^|&|,]+/, "")
    |> String.split([" ", "_"])
    |> Enum.count( fn (w) -> w == word end)
  end
end
