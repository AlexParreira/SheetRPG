//
//  ContentView.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = SheetViewModel(sheet: Sheet())
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            Text("")
                .padding()
            
                .navigationTitle("Fichas")
                .sheet(isPresented: $isPresented, content:{
                })
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            isPresented = true
                        }label: {
                            Image(systemName: "scroll")
                                .foregroundColor(Color.black)
                                .frame(width: 30, height: 30)
                            
                        }
                    }
                }
            
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
