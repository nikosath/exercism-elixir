defmodule Username do

  def sanitize([]), do: []

  def sanitize([first_letter | rest]) do
    sanitize(first_letter) ++ sanitize(rest)
  end

  def sanitize(char) do
    case char do
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?ß -> 'ss'
      ?_ -> [char]
      char when char in ?a..?z -> [char]
      _ -> []
    end
  end
  
end
