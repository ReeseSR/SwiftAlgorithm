
// MARK: - 없는 숫자 더하기

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let allNumbers:[Int] = [0,1,2,3,4,5,6,7,8,9]
    let answer = allNumbers.filter { !numbers.contains($0) }.reduce(0){ $0 + $1 }
    return answer
}