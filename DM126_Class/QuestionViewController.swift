//
//  QuestionViewController.swift
//  DM126_Class
//
//  Created by user264013 on 10/26/24.
//

import UIKit

class QuestionViewController: UIViewController {

    
    @IBAction func clickAnswer(_ sender: UIButton) {
        print(sender.tag)
    }
    
    @IBOutlet var clickAnswers: [UIButton]!
    
    @IBOutlet weak var textAnswer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()

        // Do any additional setup after loading the view.
    }
    
    func configLayout() {
        for botao in clickAnswers {
            botao.tintColor = .red
        }
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
