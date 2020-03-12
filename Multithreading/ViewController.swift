//
//  ViewController.swift
//  Multithreading
//
//  Created by Serhii Semenov on 10.03.2020.
//  Copyright © 2020 Serhii Semenov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let serhii  = Student(studentName: "Serhii")
        let andrew  = Student(studentName: "Andrii")
        let mariia  = Student(studentName: "Mariia")
        let maxym   = Student(studentName: "Maxym")
        let sophia  = Student(studentName: "Sophia")
        
        serhii.guessAnswer(searchedNumber: 86, range: 1...100, completion: { name in
            print("\(name) found")
        })
        
        andrew.guessAnswer(searchedNumber: 32, range: 1...100, completion: { name in
            print("\(name) found")
        })
        
        mariia.guessAnswer(searchedNumber: 46, range: 1...100, completion: { name in
            print("\(name) found")
        })
        
        maxym.guessAnswer(searchedNumber: 73, range: 1...100, completion: { name in
            print("\(name) found")
        })
        
        sophia.guessAnswer(searchedNumber: 99, range: 1...100, completion: { name in
            print("\(name) found")
        })
    }
}

