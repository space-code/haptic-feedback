//
// haptic-feedback
// Copyright © 2023 Space Code. All rights reserved.
//

import UIKit

// Enum defining different types of haptic feedback
public enum HapticFeedback: Equatable {
    // Haptic feedback for impact with a specified style
    case impact(UIImpactFeedbackGenerator.FeedbackStyle)

    // Haptic feedback for notifications with a specified type
    case notification(UINotificationFeedbackGenerator.FeedbackType)

    // Haptic feedback for selection
    case selection

    // Function to generate haptic feedback based on the enum case
    public func generate() {
        switch self {
        case let .impact(style):
            let generator = UIImpactFeedbackGenerator(style: style)
            generator.prepare()
            generator.impactOccurred()
        case let .notification(type):
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            generator.notificationOccurred(type)
        case .selection:
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            generator.selectionChanged()
        }
    }
}
