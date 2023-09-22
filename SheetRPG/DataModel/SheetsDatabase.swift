//
//  SheetsDatabase.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 21/09/23.
//

import Foundation

struct SheetArray: Codable {
    let sheets: [Sheet]
    let total, skip, limit: Int
    
}

struct Sheet: Identifiable, Codable {
    
    let id: Int
    let nome: String
    let classe: String
    let raca: String
    let level: Int
    let forca: Int
    let destreza: Int
    let constituicao: Int
    let inteligencia: Int
    let sabedoria:Int
    let carisma: Int
    let hp: Int
    let pm: Int
}
