//
//  ViewController.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    var arreyRock: [Rock] = [
    Rock(name: "", bibliography: "", members: "", topMusic: "", image: "")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        let XIB = UINib(nibName: "MyCustomXIBCell", bundle: nil)
        myTableView.register(XIB, forCellReuseIdentifier: "cellXIB")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreyRock.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 2 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyCustomCell {
                cell.setup(rockCell: arreyRock[indexPath.row])
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? MyCustomXIBCell {
                cell.setup(rockXIB: arreyRock[indexPath.row])
                return cell
            }
        }
        
        return UITableViewCell()
    }
}
