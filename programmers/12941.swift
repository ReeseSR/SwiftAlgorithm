
// 프로그래머스 - 최솟값 만들기

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    // 가장 큰 수와 가장 작은 수 곱해야 한다
    // A는 오름차순 정리, B는 내림차순 정리
    let a = A.sorted(by: <)
    let b = B.sorted(by: >)
    var ans = 0
    
    for idx in 0..<a.count {
        ans += a[idx] * b[idx]
    }

    return ans
}