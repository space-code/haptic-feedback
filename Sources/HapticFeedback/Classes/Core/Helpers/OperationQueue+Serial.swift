//
// haptic-feedback
// Copyright © 2025 Space Code. All rights reserved.
//

import Foundation
extension OperationQueue {
    static var serial: OperationQueue {
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        return queue
    }
}
