public import Sample

extension Sample.Comparison where Element == Duration {

    @inlinable
    public var change: Double? {
        change(using: .duration)
    }

    @inlinable
    public var isRegression: Bool {
        isRegression(using: .duration)
    }

    @inlinable
    public var isImprovement: Bool {
        isImprovement(using: .duration)
    }

    @inlinable
    public func exceedsTolerance(_ tolerance: Double) -> Bool {
        exceedsTolerance(tolerance, using: .duration)
    }
}
