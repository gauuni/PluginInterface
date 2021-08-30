import RxSwift

public protocol PluginInterface {
    func scan()
    var obsScanning: Observable<[HealthSourceDevice]>{ get }
    func stopScanning()
    var obsDeviceState: Observable<HealthSourceDeviceState>{ get }
    var obsManagerState: Observable<HealthSourceManagerState>{ get }
}

public struct HealthSourceDevice{
    let name: String
    let mac: String
}

public enum HealthSourceDeviceState: Int{
    case unknown
    case searching
    case connecting
    case connected
    case disconnecting
    case disconnected
}

public enum HealthSourceManagerState: Int{
    case poweredOff // A state that indicates Bluetooth is currently powered off.
    case poweredOn // A state that indicates Bluetooth is currently powered on and available to use.
    case resetting // A state that indicates the connection with the system service was momentarily lost.
    case unauthorized // A state that indicates the application isn’t authorized to use the Bluetooth low energy role.
    case unknown // The manager’s state is unknown.
    case unsupported // A state that indicates this device doesn’t support the Bluetooth low energy central or client role.
}


open class PluginBuilder {
    
    public init() {}

    open func build() -> PluginInterface {
        fatalError("You have to override this method.")
    }
}
