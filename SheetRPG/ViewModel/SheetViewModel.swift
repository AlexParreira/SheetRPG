//
//  SheetViewModel.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import Foundation

class SheetViewModel: ObservableObject {
    @Published var sheets: [Sheet] = []
    
    func addSheet(name: String, race: String, classC: String) {
        let newSheet = Sheet(nome: name, classe: classC, raca: race)
        sheets.append(newSheet)
    }
}
