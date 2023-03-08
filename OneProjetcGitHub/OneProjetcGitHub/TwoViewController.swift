//
//  TwoViewController.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class TwoViewController: UIViewController {

    var rockTwo: Rock = Rock(name: "", bibliography: "", members: "", topMusic: "", image: "")
    
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var followButton: UIButton!
    @IBOutlet var imageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let three = self.storyboard?.instantiateViewController(identifier: "three") as? ThreeViewController {
            three.rockThree = self.rockTwo
            followButton.backgroundColor = .red
            self.navigationController?.pushViewController(three, animated: true)
        }
    }
}
