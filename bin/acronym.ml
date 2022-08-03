let removeUnusedChar x =
  match String.length x > 0 with
  | true -> String.get x 0 |> String.make 1
  | false -> x

let acronym i =
  i |> String.uppercase_ascii
  |> Base.String.split_on_chars ~on:[ ' '; '-'; '_' ]
  |> List.map removeUnusedChar |> String.concat ""
