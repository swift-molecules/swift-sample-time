public import Sample
@_exported public import Time

extension Sample.Averaging where Element == Duration {

    @inlinable
    public static var duration: Self {
        .init(
            zero: .zero,
            adding: { $0 + $1 },
            dividing: { $0 / $1 },
            project: { $0.inSeconds },
            embed: { .seconds($0) }
        )
    }
}
