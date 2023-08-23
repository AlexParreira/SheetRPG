//
//  SheetRPGApp.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

@main
struct SheetRPGApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
            ContentView()
               
        }
        
    }
}
