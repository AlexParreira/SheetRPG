//
//  SheetRPGApp.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

@main
struct SheetRPGApp: App {
    
    init(){
        for family in UIFont.familyNames{
            print("\(family)")
            for font in UIFont.fontNames(forFamilyName: family){
                print("  \(font)")
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
