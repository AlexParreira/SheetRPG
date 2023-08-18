//
//  CadastroPersonagemView.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

struct CadastroPersonagemView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: SheetViewModel
    @State private var nomePersonagem = ""
    @State private var classePersonagem = ""
    @State private var racaPersonagem = ""
    @State private var str = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("")
                        .navigationTitle("Novo Personagem")
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("Novo Personagem")
                                    .font(.custom("Tormenta20-Regular", size: 25))
                                    .foregroundColor(.black)
                            }
                        }
                    VStack{
                        HStack{
                            TextFildMod(text:"Nome", obj:  $nomePersonagem)
                            TextFildMod(text:"Classe", obj: $classePersonagem)
                            TextFildMod(text:"Raça", obj: $racaPersonagem)
                        }
                        .padding()
                        Divider()
                            .background(Color.black)
                    }
                }
                .padding(.horizontal)
                
                Attribut(text: "For", obj: $str, distance: 10)
                Attribut(text: "Dex", obj: $str, distance: 10)
                Attribut(text: "Con", obj: $str, distance: 7)
                Attribut(text: "Int ", obj: $str, distance: 6)
                Attribut(text: "Sab ", obj: $str, distance: 1)
                Attribut(text: "Car", obj: $str, distance: 10)
                
                VStack{
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)
                    HStack{
                        
                        Attribut(text: "HP", obj: $str, distance: 24)
                        Attribut(text: "PM", obj: $str, distance: 5)
                    }
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)
                    HStack{
                        Text("Pericias")
                            .font(Font.custom("Tormenta20-Regular", size: 25))
                            .padding(.leading)
                        Spacer()
                    }
                }
                
                
                Spacer()
                Button("Salvar") {
                    viewModel.addSheet(name: nomePersonagem,race: racaPersonagem, classC: classePersonagem )
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .navigationBarTitle("Novo Personagem", displayMode: .inline)
                .navigationBarTitleModifier(font: .custom("Tormenta20-Regular", size: 15), color: .red)
                .font(Font.custom("Tormenta20-Regular", size: 15))
                
            }
            .padding()
        }
    }
}

struct TextFildMod: View{
    var text: String
    var  obj: Binding<String>
    
    var body: some View{
        TextField(text, text: obj)
            .textFieldStyle(CustomTextFieldStyle())
            .font(Font.custom("Tormenta20-Regular", size: 15))
    }
}

struct Attribut : View{
    var text: String
    var  obj: Binding<String>
    var distance: CGFloat

    var body: some View {
    
        HStack{
            
            Text(text)
                .font(Font.custom("Tormenta20-Regular", size: 24))
                .padding(.trailing)
            
            TextField("",text: obj)
                .font(Font.custom("Tormenta20-Regular", size: 24))
                .textFieldStyle(CustomTextFieldStyle())
                .frame(width: 60)
                .padding(.leading, distance)

            Spacer()
            Text("")
                .font(Font.custom("Tormenta20-Regular", size: 24))
                
            
        }
        .padding(.horizontal)
        
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(Color.white)
            .font(Font.custom("Tormenta20-Regular", size: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.black, lineWidth: 1)
            )
            .font(.body)
    }
}

extension View{
    func navigationBarTitleModifier(font: Font, color: Color) -> some View{
        self.modifier(NavigationBarTitleModifier(font: font, color: color))
    }
}

struct NavigationBarTitleModifier: ViewModifier{
    var font: Font
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .font(font)
            .foregroundColor(color)
    }
}

struct SideMenu: View {
    var body: some View {
        List {
            NavigationLink("Página Inicial", destination: Text("Página Inicial"))
            NavigationLink("Configurações", destination: Text("Configurações"))
            NavigationLink("Sobre", destination: Text("Sobre"))
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
    }
}

struct CadastroPersonagemView_Previews: PreviewProvider {
    static var previews: some View {
        CadastroPersonagemView(viewModel: SheetViewModel())
    }
}




