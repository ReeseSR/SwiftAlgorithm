
// MARK: - 프로그래머스(완전탐색) - 카펫

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    let sum = brown + yellow
    var answer: [Int] = []
    var width: Int = 1

    for height in 1...sum {
        width = sum / height
        if (width - 2) * (height - 2) == yellow {
            answer = [height, width]
        }
    }
    return answer
}