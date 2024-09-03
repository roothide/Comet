import Foundation
import Comet

// MARK: - Internal

final class PreferenceStorage: ObservableObject {
    private static let registry: String = jbroot("/var/mobile/Library/Preferences/@@PACKAGENAME@@.plist")
    /// Welcome to Comet
    /// By @ginsudev
    ///
    /// Mark your preferences with `@Published(key: "someKey", registry: PreferenceStorage.registry)`.
    /// When the value of these properties are changed, they are also saved into the preferences file on disk to persist changes.
    ///
    /// The initial value you initialise your property with is the fallback / default value that will be used if there is no present value for the
    /// given key.
    ///
    /// `@Published(key: _ registry:_)` properties can only store Foundational types that conform
    /// to `Codable` (i.e. `String, Data, Int, Bool, Double, Float`, etc).

    // Preferences
    @Published(key: "isEnabledTweak", registry: registry) var isEnabled = false
}
