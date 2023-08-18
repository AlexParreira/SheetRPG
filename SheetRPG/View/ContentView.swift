//
//  ContentView.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = SheetViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.sheets) { ficha in
                    Text("Ficha \(ficha.nome)")
                }
                .navigationTitle("Fichas de Personagem")
                
                NavigationLink(destination: CadastroPersonagemView(viewModel: viewModel)) {

                        VStack {
                            Image("scroll")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55, height: 55)
 
                        }
                    }
                    .padding()
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
