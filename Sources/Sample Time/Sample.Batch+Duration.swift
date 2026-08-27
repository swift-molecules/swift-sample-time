public import Sample

extension Sample.Batch where Element == Duration {

    @inlinable
    public var standardDeviation: Duration? {
        standardDeviation(using: .duration)
    }
}

extension Sample.Batch where Element == Duration {

    @inlinable
    public var mean: Duration? { mean(using: .duration) }

    @inlinable
    public var sum: Duration? { sum(using: .duration) }
}

extension Sample.Batch where Element == Duration {

    @inlinable
    public var medianAbsoluteDeviation: Duration? {
        medianAbsoluteDeviation(using: .duration)
    }

    @inlinable
    public func outlierCount(threshold k: Double = 3.0) -> Int? {
        outlierCount(using: .duration, threshold: k)
    }
}

extension Sample.Batch where Element == Duration {

    @inlinable
    public var coefficientOfVariation: Double? {
        coefficientOfVariation(using: .duration)
    }
}
