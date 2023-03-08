//
//  Rock.swift
//  OneProjetcGitHub
//
//  Created by Ana Paula Silva de Sousa on 07/03/23.
//

import UIKit

class Rock: NSObject {
    var name: String
    var bibliography: String
    var members: String
    var topMusic: String
    var image: String
    
    init(name: String, bibliography: String, members: String, topMusic: String, image: String ) {
        self.name = name
        self.bibliography = bibliography
        self.members = members
        self.topMusic = topMusic
        self.image = image
    }

}
