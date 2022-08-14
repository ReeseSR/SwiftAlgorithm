// MARK: - 탐욕법(Greedy) - 큰 수 만들기

import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var answer = ""
    var k:Int = k
    var number = number.map { String($0) }
    var stack = [String]()
    for i in 0..<number.count {
        while !stack.isEmpty && stack.last! < number[i] && k > 0 {
            k -= 1
            stack.removeLast()
        }
        stack.append(number[i])
    }
    answer = stack[0..<stack.count-k].joined()
    return answer
}