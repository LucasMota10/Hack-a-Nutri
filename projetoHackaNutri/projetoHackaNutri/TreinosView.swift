//
//  TreinosView.swift
//  projetoHackaNutri
//
//  Created by Student05 on 07/12/23.
//

import SwiftUI

struct TreinosView: View {
    
    
    
    var body: some View {
        
        
        NavigationStack{
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("corHackaNutri"), .orange]), startPoint: .trailing, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Spacer()
                        .frame(width: 30.0, height: 0.0)
                    
                    Text("Treinos")
                        .bold()
                        .font(.system(size: 40))
                    
                    Spacer()
                        .frame(width: 0, height: 40)
                    
                    Text("Escolha seu treino")
                        .bold()
                        .font(.system(size: 20))
                    
                    Spacer()
                        .frame(width: 0, height: 10)
                    
                    
                    NavigationLink(destination: LinkTreinoBasico()) {
                        Text("A")
                    }
                    .font(.system(size: 22))
                    .foregroundStyle(.white)
                    .frame(width: 250, height: 70)
                    .background(.black)
                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    
                    
                    NavigationLink(destination: LinkTreinoIntermediario()) {
                        Text("B")
                    }
                    .font(.system(size: 22))
                    .foregroundStyle(.white)
                    .frame(width: 250, height: 70)
                    .background(.black)
                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    
                    
                    NavigationLink(destination: LinkTreinoAvancado()) {
                        Text("C")
                    }
                    .font(.system(size: 22))
                    .foregroundStyle(.white)
                    .frame(width: 250, height: 70)
                    .background(.black)
                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(width: 0, height: 30)
                    
                    Image("imageTreinos2")
                        .resizable()
                        .frame(width: 150.0, height: 150.0)
                    
                }
            }
        }
    }
}


struct TreinosView_Previews: PreviewProvider {
    static var previews: some View {
        TreinosView()
    }
}
