defmodule NameBadge do

  def print(id, name, department \\ "OWNER") do
    "#{id_text(id)}#{name}#{department_text(department)}"
  end

  defp id_text(id) do
    if id != nil, do: "[#{id}] - ", else: ""
  end

  defp department_text(department) do
    if department != nil, do: " - #{String.upcase(department)}", else: " - OWNER"
  end
  
end
