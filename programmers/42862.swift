
// MARK: - 프로그래머스 - 체육복

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    // 가장 먼저 여별의 체육복을 가지고 있는 학생이 체육복을 도난당한 경우 체크 후 삭제(체육복을 빌려줄 수 없으므로)
    let newReserve = reserve.filter { !lost.contains($0) }.sorted()
    var newLost = lost.filter { !reserve.contains($0) }.sorted()
    for reserve in newReserve {
        // 내 앞의 학생이 체육복이 없을 경우
        if let index = newLost.firstIndex(of: reserve - 1) {
            newLost.remove(at: index)
            continue
        }
        // 내 뒤의 학생이 없을 경우
        if let index = newLost.firstIndex(of: reserve + 1) {
            newLost.remove(at: index)
        }
    }
    return (n - newLost.count)
}