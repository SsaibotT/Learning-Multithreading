//
//  Student.swift
//  Multithreading
//
//  Created by Serhii Semenov on 10.03.2020.
//  Copyright © 2020 Serhii Semenov. All rights reserved.
//

import Foundation

class Student {
    
    var studentName: String
    
    init(studentName: String) {
        self.studentName = studentName
    }
    
    func guessAnswer(searchedNumber: Int, range: CountableClosedRange<Int>, completion: @escaping ((String) -> Void)) {
        
        
        let queue = DispatchQueue.global()
        
        autoreleasepool {
            queue.async {
                
                var rand = 0
                
                while rand != searchedNumber {
                    
                    rand = Int.random(in: range)
                }
                
                DispatchQueue.main.sync {
                    completion(self.studentName)
                }
            }
        }
    }
}
