
// 프로그래머스 - 피보나치 수

import Foundation

func solution(_ n:Int) -> Int {
        // cache라는 저장 공간을 활용해서 가장 작은 단위인 0, 1부터 도출되는 값을 저장해나가는 것.
    var cache: [Int] = [0,1]
    
    for num in 2...n {
        cache.append((cache[num-1] + cache[num - 2]) % 1234567)
    }
    return cache[n]
}