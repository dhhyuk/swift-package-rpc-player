import HandSign

public struct Player {
    public let name: String

    public init(name: String) {
        self.name = name
    }
    
    public func throwing() -> HandSign {
        return HandSign.allCases.randomElement()!
    }
}
