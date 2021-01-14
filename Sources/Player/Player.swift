import HandSign

public struct Player {
    public let name: String
    
    public func throwing() -> HandSign {
        return HandSign.allCases.randomElement()!
    }
}
