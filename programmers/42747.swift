// MARK: - 프로그래머스(정렬) - H-Index

import Foundation

func solution(_ citations:[Int]) -> Int {
    var citations = citations.sorted(by: >)
    var result: Int = 0
    for idx in 0..<citations.count {
        if idx + 1 <= citations[idx] {
            result = idx + 1
        }
    }
    return result
}
