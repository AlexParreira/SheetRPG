//
//  ContentView.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(1..<10) { i in
                            Text("Item \(i)")
                                .padding(10)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                }
                .frame(maxWidth: 350,maxHeight: 150)
                .background(.gray)
                .cornerRadius(20)
                
                ScrollView(.vertical) {
                    VStack(spacing: 10) {
                        ForEach(1..<10) { i in
                            Text("Item \(i)")
                                .padding(10)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    
                }
                .frame(maxWidth: 350,maxHeight: .infinity)
                .background(.gray)
                .cornerRadius(20)
            }
            .padding(.horizontal)
        }
            //MARK: TiTle
        .sheet(isPresented: $isPresented, content:{
            CadastroPersonagemView()
        })
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Text("Fichas")
                    .font(.custom("Tormenta20-Regular", size: 45))
                    .foregroundColor(.gray)
                    .padding()
            }
            ToolbarItem(placement: .navigationBarTrailing){
                
                Button{
                    isPresented = true
                }label: {
                    Image(systemName: "scroll")
                        .foregroundColor(Color.gray)
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ContentView()
        }
    }
}
