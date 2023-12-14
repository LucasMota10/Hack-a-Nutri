//
//  home.swift
//  HackaNutri
//
//  Created by Student07 on 07/12/23.
//

import SwiftUI

struct Home: View {
    @State var nome:String = "Zeca Pagodinho"
    @State var altura:Float = 1.68
    @State var peso:Float = 80
    //@Binding var pesoAtual: String
    var body: some View {
        ZStack {
            Color("corHackaNutri")
            ScrollView {
                VStack(spacing: 10){
                    HStack(spacing: 30){
                        Image("zeca").resizable().frame(width: 100, height: 100).clipShape(Circle())
                        VStack (spacing: 8){
                            Text(nome).foregroundColor(.white).fontWeight(.bold).font(.system(size: 27))
                            Text("Nível: Iniciante 1").padding(.trailing, 70) .font(.system(size: 20)).foregroundColor(.white)
                        }
                        
                    } .padding(.top, 70)
                    Spacer()
                    VStack{
                        VStack(spacing: 5){
                         HStack {
                            Text("Idade: ").foregroundColor(.black).font(.system(size: 20))
                             Text("64").foregroundColor(.black).font(.system(size: 20))
                         }.padding(.top).padding(.trailing, 220)
                            HStack {
                                Text("Peso:").foregroundColor(.black).font(.system(size: 20))
                                Text("80 kg").foregroundColor(.black).font(.system(size: 20))
                            }.padding(.top).padding(.trailing, 210)
                            
                            HStack {
                                Text("Altura:").font(.system(size: 20))
                                Text("1.68 m").font(.system(size: 20))
                            }.padding(.top).foregroundColor(.black).padding(.trailing, 190)
                            HStack {
                                Text("Medalhas:").font(.system(size: 20))
                                Text("5/12").font(.system(size: 20))
                            }.padding().foregroundColor(.black).padding(.trailing, 180)
                            
                            
                        }.background(Color("tabsHome"))
                        
                    }
                    .frame(width: 350, height: 200)
                    .background(Color("tabsHome"))
                    VStack {
                        HStack{
                            Text("Meta")
                            
                        }.padding(.top, 20)
                        Spacer()
                        HStack {
                            VStack(spacing: 15) {
                                    Text("Anterior")
                                        
                                    Text("85kg")
                                
                                
                            }.frame(width:60, height: 80)
                                .padding(20).background(Color("Progress")).clipShape(Circle()).font(.system(size: 15)).padding(.trailing, 0)
                            VStack(spacing: 15) {
                                    Text("Atual")
                                        
                                    Text("80kg")
                                
                                
                            }.frame(width:60, height: 80)
                                .padding(20).background(Color("Progress")).clipShape(Circle()).font(.system(size: 15)).padding(.trailing, 0)
                            VStack(spacing: 15) {
                                    Text("Meta")
                                        
                                    Text("75kg")
                                
                                
                            }.frame(width:60, height: 80)
                                .padding(20).background(Color("Progress")).clipShape(Circle()).font(.system(size: 15))
                        }
                        Spacer()
                    }.frame(width:350, height: 200)
                        .background(Color("tabsHome"))
                    
                    VStack {
                        Text("IMC").padding(.top, 40)
                        Text("Valor: \(valorIMC(peso:peso, altura:altura))").padding(.trailing, 180).padding(.top, 20)
                        Text("Classificação: \(IMC(peso:peso, altura:altura))").padding(.trailing, 120).padding(.bottom, 30)
                        Spacer()
                        
                    }.frame(width:350, height: 130)
                        .background(Color("tabsHome"))
                    
                }
            }
        } .ignoresSafeArea()
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

func valorIMC (peso: Float, altura: Float) -> Double {
    var imc: Double = Double(peso/(altura*altura))
    return imc
}

func IMC (peso:Float, altura: Float) -> String {
    var imc: Double = Double(peso/(altura*altura))
    if(Double(imc) < 18.5){
       return "Baixo Peso"
    }
    if(Double(imc) >= 18.5 && Double(imc) <= 24.99){
       return "Normal"
    }
    if(Double(imc) >= 25 && Double(imc) <= 29.99){
        return "Sobrepeso"
    }
    if(Double(imc) > 30){
        return "Obesidade"
    }
    return "Padrão"
}
