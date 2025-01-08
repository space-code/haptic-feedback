//
// haptic-feedback
// Copyright © 2025 Space Code. All rights reserved.
//

import Foundation

/// An operation that introduces a delay for a specified duration.
/// Used to sequence operations in the `HapticFeedback` queue.
final class WaitOperation: Operation, @unchecked Sendable {
    // MARK: - Properties

    /// The duration of the wait in seconds.
    private let duration: TimeInterval

    // MARK: - Initialization

    /// Initializes a `WaitOperation` with a specified delay duration.
    ///
    /// - Parameter duration: The time interval, in seconds, for which the operation should pause execution.
    init(duration: TimeInterval) {
        self.duration = duration
    }

    // MARK: - Operation Execution

    /// The main method of the operation where the delay is applied.
    ///
    /// This method blocks the current thread for the specified duration.
    override func main() {
        guard !isCancelled else {
            return
        }

        Thread.sleep(forTimeInterval: duration)
        print("SLEEP")
    }
}
