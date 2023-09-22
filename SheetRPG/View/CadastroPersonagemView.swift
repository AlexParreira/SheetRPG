//
//  CadastroPersonagemView.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 16/08/23.
//

import SwiftUI
import RealmSwift

struct CadastroPersonagemView: View {
    
    
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
                    //MARK: TITLE
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
                    //MARK: INFO PERSONAGEM
                        TextFildMod(text:"Nome", obj: $nomePersonagem)
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
                .padding(.bottom)

                HStack{
                        VStack{
                            //MARK: ATRIBUTOS PERSONAGEM
                        Attribut(text: "For", obj: $forcaPersonagem, distance: 2)
                        Attribut(text: "Des", obj: $destrezaPersonagem, distance: 3)
                        Attribut(text: "Con", obj: $constituicaoPersonagem, distance: 0)
                        Attribut(text: "Int", obj: $inteligenciaPersonagem, distance: 11)
                            Attribut(text: "Sab", obj: $sabedoriaPersonagem, distance: 7)
                        Attribut(text: "Car", obj: $carismaPersonagem, distance: 4.5)
                        }
                    Divider()
                        .background(Color.black)
 

                    VStack{
                        
                        VStack{
                            
                            Text("HP:")
                                .font(Font.custom("Tormenta20-Regular", size: 24))
                                .foregroundColor(Color.gray)
                            
                            TextField("", value: $hpPersonagem, formatter: NumberFormatter())
                                .font(Font.custom("Tormenta20-Regular", size: 40))
                                .padding(20)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .foregroundColor(Color.gray.opacity(0.4))
                                .frame(maxWidth: 80 , maxHeight: 75)
                            Spacer()
                        }
                        
                        VStack{
                            
                            Text("MP:")
                                .font(Font.custom("Tormenta20-Regular", size: 24))
                                .foregroundColor(Color.gray)
                            
                            TextField("", value: $mpPersonagem, formatter: NumberFormatter())
                                .font(Font.custom("Tormenta20-Regular", size: 40))
                                .padding(20)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .foregroundColor(Color.gray.opacity(0.4))
                                .frame(maxWidth: 80 , maxHeight: 75)
                            Spacer()
                        }
                    }
                    .padding(.horizontal,45)
                    
                }
                .frame(maxWidth: 380, maxHeight: 300)
                .padding(.vertical)
                .padding(.horizontal)
                
                Button("Salvar") {
                }
                
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
        
        TextField(text, text: Binding(
            get: { self.obj.wrappedValue },
            set: { newValue in
                self.obj.wrappedValue = newValue.lowercased()
            }
        ))
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
        
        CadastroPersonagemView()
            
    }
}




