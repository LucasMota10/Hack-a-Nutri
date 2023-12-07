//
//  ContentView.swift
//  tela nutricao
//
//  Created by Student11 on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alimento: String = ""
    let cordoretangulo = Color("cor.retangulo")

    var body: some View {
        
        ZStack{
            Color("amarelo fundo")
                .ignoresSafeArea()
                    
            VStack{
                ScrollView{
                    
                    Text(" ")
                        .padding()
                    
                    HStack{
                        Image("icone.nutricao")
                        
                        Text("Alimentos")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                    //barra de pesquisa
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading)
                        
                        
                        TextField("Buscar alimentos", text: $alimento)
                            .padding()
                            .background(Color.white.opacity(1))
                            .cornerRadius(10)
                            .padding(.trailing)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

