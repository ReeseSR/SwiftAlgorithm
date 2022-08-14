// MARK: - 깊이/너비 우선 탐색(DFS/BFS) - 타겟 넘버

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    return dfs(numbers, 0, 0, target)
}

func dfs(_ numbers: [Int], _ index: Int, _ sum: Int, _ target: Int) -> Int {
    
    // index가 numbers와 같다면 계산 끝남
    if index == numbers.count {
        return sum == target ? 1 : 0
    }
    // 다음 값을 빼주는 경우
    let count1 = dfs(numbers, index+1, sum-numbers[index], target)
    // 다음 값을 더해주는 경우
    let count2 = dfs(numbers, index+1, sum+numbers[index], target)
    // 경우의 수 더한다
    return count1 + count2
}
