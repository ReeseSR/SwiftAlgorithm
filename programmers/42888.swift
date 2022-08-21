

// MARK: - 프로그래머스 오픈채팅방

import Foundation

func solution(_ record:[String]) -> [String] {
    
    // 아이디 - 닉네임
    var userInfo:[String: String] = [:]
    var solution: [String] = []
    
    
    
    for r in record {
        let splited = r.split(separator: " ").compactMap { String($0) }
        if splited.count > 2 {
            userInfo[splited[1]] = splited[2]
        }
    }
    
    for r in record {
        let splited = r.split(separator: " ").compactMap { String($0) }
        if splited[0] == "Enter" {
            solution.append("\(userInfo[splited[1]]!)님이 들어왔습니다.")
        } else if splited[0] == "Leave" {
            solution.append("\(userInfo[splited[1]]!)님이 나갔습니다.")
        }
    }

    return solution
}