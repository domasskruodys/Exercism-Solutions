typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

let flip: ChangeClosure = { ($0.1, $0.0, $0.2) }

let rotate: ChangeClosure = { ($0.1, $0.2, $0.0) }

func makeShuffle(
    flipper: @escaping ((String, String, String)) -> (String, String, String),
    rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
    return {
        $0.reversed().reduce($1) {
            $1 == 0 ? flipper($0) : rotator($0)
        }
    }
}
