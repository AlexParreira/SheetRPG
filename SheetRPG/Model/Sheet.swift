//
//  Sheet.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import Foundation
import RealmSwift

class Sheet: Object, Identifiable {
    
    @Persisted(primaryKey: true)var id: ObjectId
    @Persisted var nome: String
    @Persisted var classe: String
    @Persisted var raca: String
    @Persisted var nivel: Int
    @Persisted var forca: Int
    @Persisted var destreza: Int
    @Persisted var constituicao: Int
    @Persisted var inteligencia: Int
    @Persisted var sabedoria: Int
    @Persisted var carisma: Int
    @Persisted var hp: Int
    @Persisted var mp: Int
    
    override class func primaryKey() -> String? {
        "id"
    }
    
}
