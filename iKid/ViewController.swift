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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let tabTitle = tabBarItem.title {
            switch tabTitle {
            case "Good":
                jokes = [
                    ("I got kicked out from a Vietnamese restaurant...", "They bahn mi pho life.")
                ]
            case "Pun":
                jokes = [
                    ("Why do seagulls fly over the sea?", "If they flew over the bay, they'd be bagels")
                ]
                
            case "Dad":
                jokes = [
                    ("What motorcycle makes jokes?", "A Yamahahahahaha")
                ]
                
            default:
                break
            }
        }
        
        jokeLabel.text = jokes.first?.question
    }
    
    @IBAction func nextTapped (_ sender: UIButton) {
        guard !jokes.isEmpty else { return }
        
        if showingAnswer {
            currentIndex = (currentIndex + 1) % jokes.count
            jokeLabel.text = jokes[currentIndex].question
        } else {
            jokeLabel.text = jokes[currentIndex].answer
        }
        
        showingAnswer.toggle()
    }
        
}

