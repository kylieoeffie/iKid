//
//  ViewController.swift
//  iKid
//
//  Created by Kylie Uffie on 2/4/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    
    var jokes: [(question: String, answer: String)] = []
    var currentIndex = 0
    var showingAnswer = false
    
}

