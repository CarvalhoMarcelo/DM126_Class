//
//  ResultViewController.swift
//  DM126_Class
//
//  Created by mcarvalhosilva on 11/2/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var pontuation: Int?
    

    @IBOutlet weak var pontuatinOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        result()

        // Do any additional setup after loading the view.
    }
    
    func result() {
        guard let pontuation = pontuation
        else {return}
        pontuatinOutlet.text = "Pontuation: \(pontuation)"
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
