// MARK: - 프로그래머스(연습문제) - 소수 찾기

import Foundation

func solution(_ n:Int) -> Int {
    
    // 2부터 N까지 N-1개를 저장할 배열 할당
    // 처음에는 모두 소수로 판별하고 True 값으로 초기화
    var primeArray: [Bool] = Array(repeating: true, count: n+1)
    
    // 0과 1은 소수가 아니므로
    primeArray[0] = false
    primeArray[1] = false
    
    // 에라토스테네스의 체에 맞게 소수 구함
    for i in 2...Int(sqrt(Double(n)))+1 {
        if primeArray[i] {
            var j = 2
            while (i * j <= n) {
                primeArray[i * j] = false
                j += 1
            }
        }
    }
    
    var result = primeArray.filter { $0 == true }.count
    
    return result
}