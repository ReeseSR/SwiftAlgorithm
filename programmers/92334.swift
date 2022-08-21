// MARK: - 신고 결과 받기

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    // 중복 없애기
    var report = Set(report)
    // [신고자: 신고당한 사람]
    var reportedInfo:[String:[String]] = [:]
    //결과 메일
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    // 이름 인덱스
    var ids: [String: Int] = [:]
    
    //초기화
    for (index, id) in id_list.enumerated() {
        ids[id] = index
        reportedInfo[id] = []
    }
    
    for repo in report {
        let split = repo.split(separator: " ").map { String($0) }
        let reporter = split[0]
        let reported = split[1]
        
        reportedInfo[reported]?.append(reporter)
        
    }
    
    for name in ids.keys {
        let reporters = reportedInfo[name]!
        if reporters.count >= k {
            for reporter in reporters {
                result[ids[reporter]!] += 1
            }
        }
    }
    
    return result
}