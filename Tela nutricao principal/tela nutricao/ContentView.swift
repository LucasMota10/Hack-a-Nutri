//
//  ContentView.swift
//  tela nutricao
//
//  Created by Student11 on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alimento: String = ""
    @State private var isSheetPresented = true
    
    let cordoretangulo = Color("cor.retangulo")
    
    var body: some View {
        
        ZStack{
            Color("amarelo fundo")
                .ignoresSafeArea()
            
            VStack{
                
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
        .onAppear {
            // Abre a Sheet assim que a tela principal aparece
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                isSheetPresented.toggle()
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            SheetView(isSheetPresented: $isSheetPresented)
        }
    }
    
    
}

struct SheetView: View {
    @Binding var isSheetPresented: Bool

    var body: some View {
        ZStack{
            Color("black")
                .ignoresSafeArea()
            
            VStack {
                Image("logo principal")
                    .resizable()
                    .frame(width: 300, height: 370)
                
            }
        }
    }

    private func dismiss() {
        withAnimation {
            isSheetPresented = false
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

