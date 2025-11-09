struct Size {
    var width: Int = 80
    var height: Int = 60

    mutating func resize(newWidth width: Int, newHeight height: Int) {
        self.width = width
        self.height = height
    }
}

struct Position {
    var x: Int = 0
    var y: Int = 0

    mutating func moveTo(newX x: Int, newY y: Int) {
        self.x = x
        self.y = y
    }
}

class Window {
    var title: String = "New Window"
    let screenSize: Size = .init(width: 800, height: 600)
    var size: Size = .init()
    var position: Position = .init()
    var contents: String?
    
    init() {}
    
    init(title: String, contents: String?, size: Size? = Size(), position: Position? = Position()) {
        self.title = title
        self.contents = contents
        self.size = size ?? Size()
        self.position = position ?? Position()
    }
    
    func resize(to newSize: Size) {
        size.resize(
            newWidth: max(
                1,
                min(newSize.width, screenSize.width - position.x)
            ),
            newHeight: max(
                1,
                min(newSize.height, screenSize.height - position.y)
            )
        )
    }
    
    func move(to newLocation: Position) {
        position.moveTo(newX: max(0, min(newLocation.x, screenSize.width - size.width)),
                        newY: max(0, min(newLocation.y, screenSize.height - size.height)))
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        contents = text
    }
    
    func display() -> String {
        let newString = "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? #"[This window intentionally left blank]"#)\n"
        return newString
    }
}
