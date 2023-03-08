//
//  FourViewController.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class FourViewController: UIViewController {

    var rockFour: Rock = Rock(name: "", bibliography: "", members: "", topMusic: "", image: "")
    
    @IBOutlet var followButton: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let modal = self.storyboard?.instantiateViewController(identifier: "modal") {
            followButton.backgroundColor = .red
            self.present(modal, animated: true)
        }
    }
}
