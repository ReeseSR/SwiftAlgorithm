// MARK: - 완전탐색 - 피로도

import Foundation

var N = 0
var per: [[Int]] = []

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    N = dungeons.count
    permutation([])

    var answer = 0
    per.forEach {
        // count - 던전 수
        var k = k, count = 0

        for index in $0 {
            // 최소 필요 피로도 충족하면
            if k >= dungeons[index][0] {  
                // 소모 피로도 제거
                k -= dungeons[index][1]
                count += 1
            }
        }
        answer = max(answer, count)
    }
    return answer
}

// 순열
func permutation(_ array: [Int]){
    var array = array
    if array.count == N {
        per.append(array)
        return
    } else {
        for idx in 0..<N {
            if !array.contains(idx) {
                permutation(array+[idx])
            }
        }
    }
}