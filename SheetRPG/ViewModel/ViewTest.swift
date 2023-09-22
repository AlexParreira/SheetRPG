//
//  ViewTest.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 04/09/23.
//

import SwiftUI
import RealmSwift

struct ViewTest: View {
    
    @StateObject var sheetViewModel = SheetsViewModel()
    
    var body: some View {
        
        VStack{
            Text("Items")
                .font(.title)
            List{
                ForEach(sheetViewModel.sheets){ sheet in
                    
                    Text(sheet.nome)
                }
            }
        }
    }
}

struct ViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest()
    }
}
