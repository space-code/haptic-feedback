//
// haptic-feedback
// Copyright © 2025 Space Code. All rights reserved.
//

import UIKit

// MARK: - HapticFeedback

/// Enum defining different types of haptic feedback
@MainActor
public enum HapticFeedback: Equatable {
    /// Haptic feedback for impact with a specified style
    case impact(UIImpactFeedbackGenerator.FeedbackStyle)

    /// Haptic feedback for notifications with a specified type
    case notification(UINotificationFeedbackGenerator.FeedbackType)

    /// Haptic feedback for selection
    case selection

    /// Function to generate haptic feedback based on the enum case
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

extension HapticFeedback {
    /// A private serial operation queue to ensure haptic feedback operations are executed sequentially.
    private static let queue: OperationQueue = .serial

    /// Plays a sequence of haptic feedback notes.
    ///
    /// - Parameter notes: An array of `Note` objects, each representing either a haptic feedback or a delay.
    public static func play(_ notes: [Note]) {
        guard queue.operations.isEmpty else {
            return
        }

        for note in notes {
            let operation = note.operation

            if let last = queue.operations.last {
                operation.addDependency(last)
            }

            queue.addOperation(operation)
        }
    }
}

// MARK: HapticFeedback.Note

public extension HapticFeedback {
    enum Note {
        /// A haptic feedback event.
        case haptic(HapticFeedback)
        /// A delay before the next event.
        case wait(TimeInterval)

        /// Converts the note into an `Operation` for execution in the serial queue.
        var operation: Operation {
            switch self {
            case let .haptic(haptic):
                return HapticOperation(haptic: haptic)
            case let .wait(duration):
                return WaitOperation(duration: duration)
            }
        }
    }
}
