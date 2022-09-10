defmodule KitchenCalculator do
  def get_volume(unit_volume) do
    elem(unit_volume, 1)
  end

  def to_milliliter({unit, volume}) do
    case unit do
      :milliliter -> {:milliliter, volume}
      :cup -> {:milliliter, 240 * volume}
      :fluid_ounce -> {:milliliter, 30 * volume}
      :teaspoon -> {:milliliter, 5 * volume}
      :tablespoon -> {:milliliter, 15 * volume}
    end
  end

  def from_milliliter({_from_unit, volume}, to_unit) do
    case to_unit do
      :milliliter -> {:milliliter, volume}
      :cup -> {:cup, volume / 240}
      :fluid_ounce -> {:fluid_ounce, volume / 30}
      :teaspoon -> {:teaspoon, volume / 5}
      :tablespoon -> {:tablespoon, volume / 15}
    end
  end

  def convert({from_unit, volume}, to_unit) do
    mill = to_milliliter({from_unit, volume})
    from_milliliter(mill, to_unit)
  end
end
