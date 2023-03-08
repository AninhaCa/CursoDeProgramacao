//
//  ThreeViewController.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class ThreeViewController: UIViewController {

    var rockThree: Rock = Rock(name: "", bibliography: "", members: "", topMusic: "", image: "")
    
    @IBOutlet var followButton: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var imageThree: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = rockThree.name
        labelTwo.text = rockThree.members
        imageThree.image = UIImage(named: rockThree.image)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let four = self.storyboard?.instantiateViewController(identifier: "four") as? FourViewController {
            four.rockFour = self.rockThree
            followButton.backgroundColor = .red
            self.navigationController?.pushViewController(four, animated: true)
        }
    }
}
