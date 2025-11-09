func toRna(_ dna: String) -> String {
    var rna: String = ""
    for necleotide in dna {
        switch necleotide {
        case "G": rna.append("C")
        case "C": rna.append("G")
        case "T": rna.append("A")
        case "A": rna.append("U")
        default: rna.append("")
        }
    }
    return rna
}
