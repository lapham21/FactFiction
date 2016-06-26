//
//  FactOrFictionModel.swift
//  FactOrFiction
//
//  Created by Nolan Lapham on 4/12/16.
//  Copyright © 2016 Nolan Lapham. All rights reserved.
//

import GameKit

struct FactModel {
    
    var startMessage: [(String)] = [
        "Lets get started!",
        "You think you're ready?, click below!",
        "Lets make today the day you beat the high score",
        "Fact or Fiction, baby!"
    ]
    
    var facts:[(fact: String, check: Bool, elaboration: String)] = [
        (fact: "Popeye’s nephew’s were called Peepeye, Poopeye, Pipeye and Pupeye.", check: true, elaboration: "That is True!"),
        (fact: "Sneezes regularly exceed 100 m.p.h.", check: true, elaboration: "That is True!"),
        (fact: "The Great Wall Of China is visible from the moon.", check: false, elaboration: "That is just too far, count is as Fiction!"),
        (fact: "The total surface area of two human lungs have a surface area of approximately 70 square metres.", check: true, elaboration: "That is True!"),
        (fact: "A slug’s blood is green.", check: true, elaboration: "That is Gross!... I mean True!"),
        (fact: "In ancient Rome, a special room called a vomitorium was available for diners to purge food in during meals.", check: false, elaboration: "Fiction, the vomitorium was a series of entrance or exit passages in an ancient Roman theater!"),
        (fact: "Napoleon Bonaparte was killed at the Battle of Waterloo.", check: false, elaboration: "Fiction, Napoleon Bonaparte died as a British prisoner on the island of Saint Helena"),
        (fact: "Fingernails and hair continue to grow after death.", check: false, elaboration: "Fiction, they stop growing!"),
        (fact: "Skin is the human body’s largest organ.", check: true, elaboration: "That is True!"),
        (fact: "The bear has caused more human deaths than any other mammal in history.", check: false, elaboration: "Fiction. Sad but true, Humans are the mammals that causes the most human deaths."),
        (fact: "The first feature film produced entirely with CGI (computer-generated imagery) was Toy Story.", check: true, elaboration: "That is True!")
    ]
    
    func randomFact() -> (fact: String, check: Bool, elaboration: String) {
        
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(facts.count)
        return(facts[randomNumber])
    }
    
    func randomStartMessage() -> String {
        
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(startMessage.count)
        return(startMessage[randomNumber])
    }
}










