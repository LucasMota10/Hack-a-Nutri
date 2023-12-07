//
//  ContentView.swift
//  tela nutricao
//
//  Created by Student11 on 07/12/23.
//

import SwiftUI

struct Nutric_a_o: View {
    
    @State private var alimento: String = ""
    let cordoretangulo = Color("cor.retangulo")
    
    var body: some View {
        
        ZStack{
            Color("amarelo")
                .offset(y:-20)
            VStack{
                HStack{
                    Image("nutricao")
                    Text("Alimentos")
                        .font(.largeTitle)
                        .bold()
                }
                .padding(.trailing)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading)
                    
                    
                    TextField("Buscar alimentos", text: $alimento)
                        .padding()
                        .background(Color.white.opacity(1))
                        .cornerRadius(10)
                        .padding(.trailing)
                    Spacer()
                }
                .padding([.bottom, .trailing])
                VStack(spacing: -20){
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
            }

                Spacer()
            }//vstack
        } //Zstack
    }
}

struct Nutric_a_o_Previews: PreviewProvider {
    static var previews: some View {
        Nutric_a_o()
    }
}
