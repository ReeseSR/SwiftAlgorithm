
// 프로그래머스 - 기능 개발

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var countQueue: [Int] = []
    var answer:[Int] = []
    for idx in 0..<progresses.count {
        var remainingDays = (100 - progresses[idx]) / speeds[idx]
        remainingDays = (100 - progresses[idx]) % speeds[idx] == 0 ? remainingDays : remainingDays + 1
        countQueue.append(remainingDays)
    }
    
    while !countQueue.isEmpty {
        let delay = countQueue.first!
        var taskCount = 0
        while !countQueue.isEmpty && countQueue.first! <= delay {
            taskCount += 1
            countQueue.removeFirst()
        }
        answer.append(taskCount)
    }
    return answer
}