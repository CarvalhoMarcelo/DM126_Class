//
//  Questions.swift
//  DM126_Class
//
//  Created by 264013 on 11/2/24.
//

import Foundation

struct Question {
    var tittle: String
    var answers: [String]
}

let questions: [Question] = [
        Question(tittle: "How much time do you sleep?", answers: [
            "less than 3h", "between 6 and 8 hours", "between 8 and 10 hours"]),
        Question(tittle: "How much time by week do you pratice sports?", answers: [
            "1x or less", "2 to 3x", "More than 3x"])
    ]
