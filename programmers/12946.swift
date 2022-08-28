
// MARK: - 프로그래머스 - 하노이의 탑

import Foundation

var answer: [[Int]] = []

func solution(_ n:Int) -> [[Int]] {
    hanoi(n: n, from_pos: 1, to_pos: 3, via_pos: 2)
    return answer
}

func hanoi(n: Int, from_pos: Int, to_pos: Int, via_pos: Int) {
    if n == 1 {
        answer.append([from_pos, to_pos])
    } else {
        hanoi(n: n-1, from_pos: from_pos, to_pos: via_pos, via_pos: to_pos)
        answer.append([from_pos, to_pos])
        hanoi(n: n-1, from_pos: via_pos, to_pos: to_pos, via_pos: from_pos)
    }
}