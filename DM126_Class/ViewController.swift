//
//  ViewController.swift
//  DM126_Class
//
//  Created by user264013 on 10/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var outletBtn: UIButton!
    @IBAction func clickBtn(_ sender: Any) {
        print("Botao clicado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()        
        configLayout()
    }
    
    func configLayout() {
        outletBtn.layer.cornerRadius = 20.0
    }
}

