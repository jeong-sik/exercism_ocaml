let removeUnusedChar x =
  let upper =
    Base.String.Search_pattern.replace_all
      (Base.String.Search_pattern.create "_")
      ~in_:x ~with_:""
    |> String.uppercase_ascii
  in
  match String.length upper > 0 with
  | true -> String.get upper 0 |> String.make 1
  | false -> upper

let acronym i =
  i
  |> Base.String.split_on_chars ~on:[ ' '; '-'; '_' ]
  |> List.map removeUnusedChar |> String.concat ""
