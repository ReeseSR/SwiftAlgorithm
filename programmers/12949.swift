
// MARK: - 프로그래머스 - 행렬의 곱셈

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = Array(repeating: [Int](), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0 ..< arr2[0].count {
            var sum = 0
            for k in 0 ..< arr1[0].count {
                sum += arr1[i][k] * arr2[k][j]
            }
            answer[i].append(sum)
        }
    }
    
    return answer
}