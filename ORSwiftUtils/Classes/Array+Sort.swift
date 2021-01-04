
public extension Array {
    func propertySorted<T: Comparable>(_ keyPath: KeyPath<Element, T?>, descending: Bool) -> [Element] {
        sorted { a, b in
            switch (a[keyPath: keyPath], b[keyPath: keyPath]) {
            case (.some, .some):
                if descending {
                    return a[keyPath: keyPath]! > b[keyPath: keyPath]!
                } else {
                    return a[keyPath: keyPath]! < b[keyPath: keyPath]!
                }
            case (.some, .none):
                return true
            case (.none, _):
                return false
            }
        }
    }

    func propertySorted<T: Comparable>(_ keyPath: KeyPath<Element, T>, descending: Bool) -> [Element] {
        sorted { a, b in
            if descending {
                return a[keyPath: keyPath] > b[keyPath: keyPath]
            } else {
                return a[keyPath: keyPath] < b[keyPath: keyPath]
            }
        }
    }
}
