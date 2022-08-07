// MARK: - 프로그래머스(정렬) - 가장 큰 수

import Foundation

func solution(_ numbers:[Int]) -> String {

    let numbers = numbers.map { String($0) }.sorted(by: {$0 + $1 > $1 + $0})

    if numbers[0] == "0" {
        return "0"
    }

    let result = numbers.joined()

    return result
}