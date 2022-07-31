import Foundation

// 프로그래머스 - 디스크 컨트롤러

func solution(_ jobs:[[Int]]) -> Int {
    // 작업의 소요 시간 기준으로
    // 작업의 소요 시간 같다면, 작업 요청 시간 빠른 순서대로
    var sortedJobs = jobs.sorted { $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1] }

    // 시간
    var currentTime = 0, totalTime = 0

    while !sortedJobs.isEmpty {
        for idx in 0..<sortedJobs.count {
            let requestingPoint = sortedJobs[idx][0]
            let timeRequired = sortedJobs[idx][1]

            // 요청 시점이 실제 작업 시작 시간보다 앞서는 경우
            if requestingPoint <= currentTime {
                // 전체 수행 시간은 = (작업 시작 시간 + 소요 시간) - 요청 시점
                currentTime += timeRequired
                totalTime += currentTime - requestingPoint
                sortedJobs.remove(at: idx)
                break
            }

            // 시작 시간이 현재 시간보다 앞서는 작업 없는 경우
            if idx == sortedJobs.count - 1 {
                currentTime += 1
            }
        }
    }

    return totalTime / jobs.count
}