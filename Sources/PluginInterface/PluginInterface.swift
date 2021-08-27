public protocol PluginInterface {
    func foo() -> String
}

open class PluginBuilder {
    
    public init() {}

    open func build() -> PluginInterface {
        fatalError("You have to override this method.")
    }
}
