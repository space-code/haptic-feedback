//
// haptic-feedback
// Copyright © 2025 Space Code. All rights reserved.
//

import Foundation

/// An operation that triggers haptic feedback using the provided `HapticFeedback` object.
/// This operation is executed on the main thread to ensure the haptic feedback is played properly.
final class HapticOperation: Operation, @unchecked Sendable {
    // MARK: - Properties

    /// The `HapticFeedback` instance used to generate the haptic feedback.
    private let haptic: HapticFeedback

    // MARK: - Initialization

    /// Initializes a `HapticOperation` with a specified `HapticFeedback` object.
    ///
    /// - Parameter haptic: The `HapticFeedback` instance that will generate the haptic feedback.
    init(haptic: HapticFeedback) {
        self.haptic = haptic
    }

    // MARK: - Operation Execution

    /// The main method of the operation where the haptic feedback is triggered.
    ///
    /// This method ensures that the haptic feedback is generated on the main thread.
    override func main() {
        guard !isCancelled else {
            return
        }

        DispatchQueue.main.sync {
            self.haptic.generate()
        }
    }
}
