//
//  Sheet.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import Foundation


struct Sheet: Identifiable {
    let id = UUID()
    var nome: String
    var classe: String
    var raca: String
}
