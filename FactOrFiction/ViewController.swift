//
//  ViewController.swift
//  FactOrFiction
//
//  Created by Nolan Lapham on 4/12/16.
//  Copyright © 2016 Nolan Lapham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let factModel = FactModel()
    let colorModel = ColorModel()
    var scoreVar: Int = 0
    var highScoreVar: Int = 0
    var randomFact: (fact: String, check: Bool, elaboration: String) = FactModel().randomFact()
    
    //labels
    @IBOutlet var headerLabel: UIView!
    @IBOutlet weak var factText: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var highScore: UILabel!
    
    //buttons
    @IBOutlet weak var factButtonText: UIButton!
    @IBOutlet weak var fictionButtonText: UIButton!
    @IBOutlet weak var factFictionButtonText: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // display first fact
        factText.text = factModel.randomStartMessage()
        view.backgroundColor = colorModel.colors[0]
        factFictionButtonText.tintColor = colorModel.colors[0]
        
        // display scores
        score.text = scoreVar.description
        highScore.text = highScoreVar.description
        
        // hide fact and fiction buttons
        factButtonText.hidden = true
        fictionButtonText.hidden = true
        
        // make rounded edges
        factButtonText.layer.cornerRadius = 5
        fictionButtonText.layer.cornerRadius = 5
        factFictionButtonText.layer.cornerRadius = 5
        score.layer.cornerRadius = 5
        highScore.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func factFictionButton() {
        // change the button text after the opening line
        factFictionButtonText.setTitle("Click Here for more Facts", forState: .Normal)
        
        // fact display
        randomFact = factModel.randomFact()                      //get random fact tuple
        factText.text = randomFact.fact
        
        // colors
        view.backgroundColor = colorModel.colors[0]
        factFictionButtonText.tintColor = colorModel.colors[0]
        
        // button show and hide
        factFictionButtonText.hidden = true
        factButtonText.hidden = false
        fictionButtonText.hidden = false
        
    }
    
    @IBAction func factButton() {
        factText.text = randomFact.elaboration

        // handle the scoring
        if (randomFact.check == true) {
            scoreVar += 1
            score.text = scoreVar.description
            if (scoreVar >= highScoreVar) {
                highScoreVar = scoreVar
                highScore.text = highScoreVar.description
            }
            view.backgroundColor = colorModel.colors[1]
        } else if (randomFact.check == false) {
            //TODO Display you lose popup for the loser!
            
            scoreVar = 0
            score.text = scoreVar.description
            view.backgroundColor = colorModel.colors[2]
        }
        
        // button show and hide
        factFictionButtonText.hidden = false
        factButtonText.hidden = true
        fictionButtonText.hidden = true
    }
    
    @IBAction func fictionButton() {
        factText.text = randomFact.elaboration
        view.backgroundColor = colorModel.colors[2]
        
        // handle the scoring
        if (randomFact.check == false) {
            scoreVar += 1
            score.text = scoreVar.description
            if (scoreVar >= highScoreVar) {
                highScoreVar = scoreVar
                highScore.text = highScoreVar.description
            }
            view.backgroundColor = colorModel.colors[1]
        } else if (randomFact.check == true) {
            //TODO Display you lose popup for the loser!
            
            scoreVar = 0
            score.text = scoreVar.description
            view.backgroundColor = colorModel.colors[2]
        }
        
        // button show and hide
        factFictionButtonText.hidden = false
        factButtonText.hidden = true
        fictionButtonText.hidden = true
    }
    
}

















