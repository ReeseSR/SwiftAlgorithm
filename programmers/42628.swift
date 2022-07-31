import Foundation

// 프로그래머스 - 이중우선순위큐

func solution(_ operations:[String]) -> [Int] {
    var priorityQueues: [Int] = []
    for operation in operations {
        // operation 분리
        let splittedOperation = operation.components(separatedBy: .whitespaces)
        let command = splittedOperation[0]
        let value = splittedOperation[1]
        
        if command == "I" {
            priorityQueues.append(Int(value) ?? 0)
            priorityQueues.sort()
        }
        
        else if !priorityQueues.isEmpty {
            if command == "D" && value == "1" {
                // 최댓값 제거
                priorityQueues.removeLast()
                
            }
            else if command == "D" && value == "-1" {
                // 최솟값 제거
                priorityQueues = priorityQueues.reversed()
                priorityQueues.popLast()
                priorityQueues = priorityQueues.reversed()
            }
        }
    }
    // 이중우선순위큐 비어있을 경우
    if priorityQueues.isEmpty {
        return [0,0]
    } else {
        return [priorityQueues.last!, priorityQueues[0]]
    }
}