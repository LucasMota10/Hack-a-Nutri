//
//  ListOptions.swift
//  Hacka-Nutri
//
//  Created by Student09 on 07/12/23.
//

import Foundation

struct Option: Identifiable {
    var id = UUID()
    var icon: String
    var text: String
}

let options = [
    Option(icon: "person.circle.fill", text: "Alterar Foto"),
    Option(icon: "scalemass.fill", text: "Alterar Peso"),
    Option(icon: "ruler.fill", text: "Alterar Altura"),
    Option(icon: "arrow.triangle.2.circlepath.circle", text: "Sincronizar"),
    Option(icon: "star.fill", text: "Progresso"),
    Option(icon: "target", text: "Metas"),
    Option(icon: "person.3.fill", text: "Conta"),
    Option(icon: "character.bubble.fill", text: "Idiomas"),
    Option(icon: "trash.fill", text: "Excluir Conta")
]



