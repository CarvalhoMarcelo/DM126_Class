//
//  QuestionViewController.swift
//  DM126_Class
//
//  Created by user264013 on 10/26/24.
//

import UIKit

class QuestionViewController: UIViewController {
    var currentQuestion = 0
    var points = 0
    
    @IBAction func clickAnswer(_ sender: UIButton) {
        if sender.tag == 0 {
            points -= 1
        } else if ( sender.tag == 2) {
            points += 1
        }
        
        if(currentQuestion < questions.count - 1) {
            currentQuestion += 1
            configQuestions()
        } else {
            goToScreenResult()
        }
        
        print(sender.tag)
    }
    
    @IBOutlet var clickAnswers: [UIButton]!
    
    @IBOutlet weak var textAnswer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        configQuestions()

        // Do any additional setup after loading the view.
    }
    
    func configLayout() {
        textAnswer.numberOfLines = 0
        for button in clickAnswers {
            button.tintColor = .red
        }
    }
    
    func configQuestions() {
        textAnswer.text = questions[currentQuestion].tittle
        for button in clickAnswers {
            let buttonTittle = questions[currentQuestion].answers[button.tag]
            button.setTitle(buttonTittle, for: .normal)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as?
                ResultViewController
        else {
            return
        }
        resultVC.pontuation = points
    }
    
    func goToScreenResult() {
        performSegue(withIdentifier: "goToResultScreen", sender: nil)
    }
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
