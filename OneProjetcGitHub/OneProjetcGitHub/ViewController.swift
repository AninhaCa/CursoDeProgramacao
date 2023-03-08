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
    Rock(name: "OS MUTANTES", bibliography: "A banda nasceu em meio ao movimento Tropicalista brasileiro, em 1966, que fortaleceu essa mistura de estilos nacionais e estrangeiros.Com forte influência dos Beatles, Os Mutantes lançaram cinco álbuns entre 1968 e 1972 com a sua formação original.", members: "Formada por Rita Lee e os irmãos Arnaldo Baptista e Sérgio Dias, Os Mutantes trouxeram uma mistura de rock com gêneros musicais brasileiros, abrindo espaço para outros grupos testarem essa mescla de ritmos.", topMusic: "A minha menina, Balada do louco, Ave, Lúcifer", image: "MAMUTES"),
    Rock(name: "LEGIÃO URBANA", bibliography: "Legião Urbana foi uma banda de rock brasileira formada em 1982, em Brasília, por Renato Russo e Marcelo Bonfá. O grupo também contou com Dado Villa-Lobos e Renato Rocha em sua formação mais conhecida.", members: "Eduardo Paraná, Paulo Paulista, Ico Ouro Preto, Renato Rocha)", topMusic: "Eduardo e Mônica, Tempo Perdido, Pais e filhos", image: "LEGIAO URBANA"),
    Rock(name: "BARÃO VERMELHO", bibliography: "Barão Vermelho é uma banda de rock brasileira formada em 1981 no Rio de Janeiro. A banda faz parte do Quarteto Sagrado do rock brasileiro da década de 1980, ao lado das bandas Legião Urbana, Os Paralamas do Sucesso e Titãs, além de ser responsável por popularizar o gênero na mesma década.", members: "Cazuza, Dé Palmeira, Dadi Carvalho, Peninha, Frejat, Rodrigo Santos", topMusic: "Bete Balaço. Por Você, Pro Dia Nascer Feliz", image: "BARAO VERMELHO")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let two = self.storyboard?.instantiateViewController(identifier: "two") as? TwoViewController {
            two.rockTwo = arreyRock[indexPath.row]
            self.navigationController?.pushViewController(two, animated: true)
        }
    }
}
