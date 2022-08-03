type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

val convert : dna -> rna
val to_rna : dna list -> rna list