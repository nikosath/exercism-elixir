defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(minutes_cooked) do
    expected_minutes_in_oven() - minutes_cooked
  end
  def preparation_time_in_minutes(lasagna_layers) do
    2 * lasagna_layers
  end
  def total_time_in_minutes(lasagna_layers, minutes_cooked) do
    preparation_time_in_minutes(lasagna_layers) + minutes_cooked
  end

  def alarm() do
    "Ding!"
  end
end
