import Foundation

@objc public class NativeView: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
