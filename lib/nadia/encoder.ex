defimpl Poison.Encoder, for: Nadia.Model.InlineKeyboardButton do
  def encode(button, options) do
    button
    |> Map.from_struct()
    |> reject_nil
    |> Poison.Encoder.encode(options)
  end

  defp reject_nil(map) do
    :maps.filter(fn _, v -> !is_nil(v) end, map)
  end
end
