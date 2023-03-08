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
    }
    
    @IBAction func follow(_ sender: Any) {
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
