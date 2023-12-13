//
//  ContentView.swift
//  tela nutricao
//
//  Created by Student11 on 07/12/23.
//

import SwiftUI

struct nutricao: View {
    @StateObject var viewmodel = ViewModel()
    @State private var alimento: String = ""
    @State private var selectedCategory = "Abobrinha, paulista, crua"
    
    let cordoretangulo = Color("cor.retangulo")
    
    var body: some View {
        
        ZStack{
            Color("amarelo")
                .ignoresSafeArea()
            
            VStack{
                
                Text(" ")
                    .padding()
                
                HStack{
                    Image("nutricao")
                        .resizable()
                        .frame(width: 70, height: 90)
                    Text("Alimentos")
                        .font(.largeTitle)
                        .bold()
                }
                
                //barra de pesquisa
                HStack {
                    VStack {
                                Text("Alimento Selecionado: \(selectedCategory)")

                                Picker("Food Category", selection: $selectedCategory) {
                                    ForEach(viewmodel.comida,id: \.id){ index in
                                        Text(index.description!)
                                            .tag(index)
                                    }
                                }
                            }
                }
                
                //imagem salada
                Image("salada")
                    .resizable()
                    .frame(width: 240, height: 240)
                
                //kcal
                HStack{
                    Text("kcal")
                        .padding(.trailing, 100)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(cordoretangulo)
                            .frame(width: 100, height: 50)
                        
                        Text("2800")
                            .foregroundColor(Color.black)
                    }
                }
                
                //
                HStack{
                    Text("Proteínas")
                        .padding(.trailing, 100)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(cordoretangulo)
                            .frame(width: 100, height: 50)
                        
                        Text("70g")
                            .foregroundColor(Color.black)
                    }
                }
                
                HStack{
                    Text("Carboidratos")
                        .padding(.trailing, 100)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(cordoretangulo)
                            .frame(width: 100, height: 50)
                        
                        Text("100g")
                            .foregroundColor(Color.black)
                        
                    }
                }
                
                Text(" ")
                    .padding(45)
                
            }
        }
    }
    
    
}
    
    struct nutricao_Previews: PreviewProvider {
        static var previews: some View {
            nutricao()
        }
    }
    

