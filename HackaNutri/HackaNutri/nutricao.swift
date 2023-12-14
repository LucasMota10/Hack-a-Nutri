//
//  ContentView.swift
//  tela nutricao
//
//  Created by Student11 on 07/12/23.
//

import SwiftUI

struct nutricao: View {
    @StateObject var viewmodel = ViewModel()
    @State var alimento : food
    @State var nome = ""
    
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
                    Text(alimento.descricao)
                        .font(.largeTitle)
                        .bold()
                }
                
                //barra de pesquisa
                
                //imagem salada
                
                //kcal
                HStack{
                    Text("Calorias")
                        .padding(.trailing, 80)
                        .bold()
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(cordoretangulo)
                            .frame(width: 150, height: 50)
                        
                        Text(alimento.calorias)
                            .foregroundColor(Color.black)
                    }
                }
                
                //
                HStack{
                    Text("Quantidade")
                        .padding(.trailing, 50)
                        .bold()
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(cordoretangulo)
                            .frame(width: 150, height: 50)
                        
                        Text(alimento.quantidade)
                            .foregroundColor(Color.black)
                    }
                }
                Image("salada")
                    .resizable()
                    .frame(width: 240, height: 240)
                
                Text(" ")
                    .padding(45)
                
            }
        }
    }
    
    
}
    
    struct nutricao_Previews: PreviewProvider {
        static var previews: some View {
            nutricao( alimento: food(id: identifica(timestamp: 0, date: "x"), descricao: "y", quantidade: "z", calorias: "a"))
        }
    }
    

