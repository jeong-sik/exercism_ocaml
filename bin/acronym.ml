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
  let str =
    Base.String.Search_pattern.replace_all
      (Base.String.Search_pattern.create "-")
      ~in_:i ~with_:" "
  in
  str |> Base.String.split ~on:' ' |> List.map removeUnusedChar
  |> String.concat ""
