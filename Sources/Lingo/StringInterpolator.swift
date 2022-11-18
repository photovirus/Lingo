import Foundation

final class StringInterpolator {

    private static let regularExpression = #/\%\{(?<key>[^\}]*)\}/#

    /// Input string is in format: "You have %{count} unread messages".
    /// The function finds all placeholders and replaces them with a value specified in interpolations dictionary
    func interpolate(_ rawString: String, with interpolations: [String: Any]) -> String {
        var result = rawString
        let matches = rawString.matches(of: StringInterpolator.regularExpression)

        return matches.reduce(into: result) { result, match in
            if let interpolation = interpolations[String(match.key)] {
                result = result.replacingOccurrences(of: "\(match.0)", with: "\(interpolation)")
            }

        }
    }
    
}
