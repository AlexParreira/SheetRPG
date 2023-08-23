//
//  CadastroPersonagemView.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI

struct CadastroPersonagemView: View {
    
    @ObservedObject var sheetViewModel: SheetViewModel

    @Environment(\.dismiss) var dismiss
    
    init(sheet: Sheet) {
        self.sheetViewModel = SheetViewModel(sheet: sheet)
        
    }

    @State private var nomePersonagem = ""
    @State private var classePersonagem = ""
    @State private var racaPersonagem = ""
    @State private var levelPersonagem = 0
    
    @State private var forcaPersonagem: Int = 0
    @State private var destrezaPersonagem: Int  = 0
    @State private var constituicaoPersonagem: Int  = 0
    @State private var inteligenciaPersonagem: Int  = 0
    @State private var sabedoriaPersonagem: Int  = 0
    @State private var carismaPersonagem: Int  = 0
    @State private var hpPersonagem: Int  = 0
    @State private var mpPersonagem: Int  = 0
    
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("")
                        .navigationTitle("")
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("Novo Personagem")
                                    .font(.custom("Tormenta20-Regular", size: 35))
                                    .foregroundColor(.gray)
                                    .padding(.top, 25)
                            }
                        }
                    
                    VStack{

                        TextFildMod(text:"Nome", obj:  $nomePersonagem)
                            .padding(.horizontal)
                            .foregroundColor(Color.red)

                        HStack{
                            
                            TextFildMod(text:"Raça", obj: $racaPersonagem)
                            TextFildMod(text:"Classe", obj: $classePersonagem)
                            TextField("", value: $levelPersonagem, formatter: NumberFormatter())
                                .textFieldStyle(CustomTextFieldStyle())
                                
                                
                                
                        }
                        .padding()
                        Divider()
                            .background(Color.black)
                    }
                }
                .padding(.horizontal)
                
                Attribut(text: "For", obj: $forcaPersonagem, distance: 10)
                Attribut(text: "Des", obj: $destrezaPersonagem, distance: 10)
                Attribut(text: "Con", obj: $constituicaoPersonagem, distance: 5)
                Attribut(text: "Int", obj: $inteligenciaPersonagem, distance: 16)
                Attribut(text: "Sab", obj: $sabedoriaPersonagem, distance: 10)
                Attribut(text: "Car", obj: $carismaPersonagem, distance: 8)
                
                VStack{
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)
                    HStack{
                        
                        Attribut(text: "HP", obj: $hpPersonagem, distance: 1)
                        Attribut(text: "PM", obj: $mpPersonagem, distance: 1)
                    }
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)

                        Spacer()
                    
                }
                
                
                Spacer()
                Button("Salvar") {
                    sheetViewModel.AddSheet(nome: nomePersonagem, classe: classePersonagem, raca: racaPersonagem, nivel: levelPersonagem, forca: forcaPersonagem, destreza: destrezaPersonagem, constituicao: constituicaoPersonagem, inteligencia: inteligenciaPersonagem, sabedoria: sabedoriaPersonagem, carisma: carismaPersonagem, hp: hpPersonagem, mp: mpPersonagem)
                    
                    dismiss()
                }
                .padding()
            }
        }
    }
}



struct Attribut : View{
    var text: String
    var  obj: Binding<Int>
    var distance: CGFloat
    
    var body: some View {
    
        HStack{
            
            Text("\(text):")
                .font(Font.custom("Tormenta20-Regular", size: 24))
                .padding(.leading)
                .foregroundColor(Color.gray)
                
            
            
            TextField("", value: obj, formatter: NumberFormatter())
                .font(Font.custom("Tormenta20-Regular", size: 24))
                .textFieldStyle(CustomTextFieldStyle())
                .frame(width: 60)
                .padding(.leading, distance)

            Spacer()
            
        }
        .padding(.horizontal)
        
    }
}
struct TextFildMod: View{
    var text: String
    var  obj: Binding<String>
    
    var body: some View{
        
        TextField(text, text: obj)
            .textFieldStyle(CustomTextFieldStyle())
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .font(Font.custom("Tormenta20-Regular", size: 20))
            .foregroundColor(Color.gray.opacity(0.4))
    }
}


struct CadastroPersonagemView_Previews: PreviewProvider {
    
    static var previews: some View {

        CadastroPersonagemView(sheet: Sheet())
            
    }
}




