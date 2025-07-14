typealias Wires = (String, String, String)

typealias ReOrder = @Sendable ((Wires)) -> Wires

let flip: ReOrder = { ($0.1, $0.0, $0.2) }

let rotate: ReOrder = { ($0.1, $0.2, $0.0) }

func makeShuffle(
    flipper: @escaping ReOrder,
    rotator: @escaping ReOrder,
) -> ([UInt8], Wires) -> Wires {
    return {
        $0.reversed().reduce($1) {
            $1 == 0 ? flipper($0) : rotator($0)
        }
    }
}
