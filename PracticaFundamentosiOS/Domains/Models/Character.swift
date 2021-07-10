//
//  Characters.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 3/7/21.
//

import Foundation

typealias Characters = [Character]

enum CharacterType {
    case heroe
    case villian
}

struct Character {
    var name: String
    var surname: String
    var img_character: String?
    var rating: Float
    var characterType: CharacterType
    var biography: String
    var gallery: [String]
    var bg_image: String
}
