//
//  SheetViewModel.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import Foundation
import RealmSwift

class SheetViewModel: ObservableObject{
    
    @Published var sheet: Sheet
    
    init(sheet: Sheet) {
        self.sheet = sheet
    }
    
    
    func AddSheet(
    nome: String,
    classe: String,
    raca: String,
    nivel: Int,
    forca: Int,
    destreza: Int,
    constituicao: Int,
    inteligencia: Int,
    sabedoria: Int,
    carisma: Int,
    hp: Int,
    mp: Int
    ){
        sheet.nome = nome
        sheet.classe = classe
        sheet.raca = raca
        sheet.nivel = nivel
        sheet.forca =  forca
        sheet.destreza = destreza
        sheet.constituicao = constituicao
        sheet.inteligencia = inteligencia
        sheet.sabedoria = sabedoria
        sheet.carisma =  carisma
        sheet.hp = hp
        sheet.mp = mp
        
        saveSheet()
        
    }
    
    func saveSheet() {
        do{
            let realm = try Realm()
            try realm.write{
                realm.add(sheet, update: .modified)
            }
        }catch{
            print("Erro ao salvar folha de personagem: \(error.localizedDescription)")
        }
    }
}
