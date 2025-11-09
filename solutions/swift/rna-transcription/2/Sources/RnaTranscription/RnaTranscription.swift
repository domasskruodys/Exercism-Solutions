let dnaToRna = ["G": "C", "C": "G", "T": "A", "A": "U"]

func toRna(_ dna: String) -> String {
    return dna.compactMap { dnaToRna[String($0)] }.joined()
}
