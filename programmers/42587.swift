import Foundation

// 프로그래머스 - 프린터

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue: [(Int, Int)] = priorities.enumerated().map {
        ($0.offset, $0.element)
    }
    var prioritiesQueue: [Int] = priorities.sorted(by: >)
    var result = 0

    while !queue.isEmpty {
        let j = queue.removeFirst()

        if j.1 == prioritiesQueue.first! {
            result += 1

            if location == j.0 {
                break
            }
            prioritiesQueue.removeFirst()
        } else {
            queue.append(j)
        }
    }
    return result
}

