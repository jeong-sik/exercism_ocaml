type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

let convert : dna -> rna =
 fun x -> match x with `G -> `C | `C -> `G | `T -> `A | `A -> `U

let to_rna i = i |> List.map convert
