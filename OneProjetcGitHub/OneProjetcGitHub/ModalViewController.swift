//
//  ModalViewController.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet var buttonPlay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonPlay(_ sender: Any) {
        if let navigation = self.storyboard?.instantiateViewController(identifier: "navi") {
            buttonPlay.backgroundColor = .red
            self.present(navigation, animated: true)
        }
    }
}
