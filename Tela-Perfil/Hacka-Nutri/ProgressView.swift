//
//  ProgressView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 11/12/23.
//

import SwiftUI

struct ProgressView: View {
    var ac0: Int = 15
    var ac1: Int = 30
    var ac2: Int = 45
    var ac3: Int = 90
    var ac4: Int = 120
    var ac5: Int = 150
    var ac6: Int = 180
    var ac7: Int = 250
    var ac8: Int = 300
    var ac9: Int = 350
    var ac10: Int = 400
    var ac11: Int = 500
    @State var treinos:Int = 5
    var body: some View {
        NavigationStack{
            ZStack {
                Color.black
                ScrollView {
                    VStack {
                        HStack {
                            Text("Progresso").foregroundColor(Color("FonteProgress")).fontWeight(.bold).font(.system(size: 32))
                        }.padding(.bottom, 30).padding(.top, 30)
                        HStack(alignment: .top) {
                            NavigationLink (destination: ConquistouView(x: ac0, y:"Iniciante 1")){
                                Image("Iniciante 1").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: ConquistouView(x: ac1, y:"Iniciante 1")){
                                Image("Iniciante 2").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: ConquistouView(x: ac2, y:"Iniciante 1")){
                                Image("Iniciante 3").resizable()    .frame(width: 100, height: 100)
                                
                            }
                        } .padding(.bottom, 50).padding(.trailing)
                        HStack(alignment: .top) {
                            NavigationLink (destination: ConquistouView(x: ac3, y:"Intermediario 1")){
                                Image("Intermediario 1").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: ConquistouView(x: ac4, y:"Intermediaro 2")){
                                Image("Intermediario 2").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: ConquistouView(x: ac5, y:"Intermediario 3")){
                                Image("Intermediario 3").resizable()    .frame(width: 100, height: 100)
                                
                            }
                        } .padding(.bottom, 50).padding(.trailing)
                        
                        HStack(alignment: .top) {
                            NavigationLink (destination: ConquistouView(x: ac6, y:"Monstruosidade 1")){
                                Image("Monstruosidade 1").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: NaoConquistouView(x: ac7, y:"Monstruosidade 2 - Blocked")){
                                Image("Monstruosidade 2 - Blocked").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: NaoConquistouView(x: ac8, y:"Monstruosidade 3 - Blocked")){
                                Image("Monstruosidade 3 - Blocked").resizable()    .frame(width: 100, height: 100)
                                
                            }
                        } .padding(.bottom, 50).padding(.trailing)
                        
                        HStack(alignment: .top) {
                            NavigationLink (destination: NaoConquistouView(x: ac9, y:"Mestre 1 - Blocked")){
                                Image("Mestre 1 - Blocked").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: ConquistouView(x: ac10, y:"Mestre 2 - Blocked")){
                                Image("Mestre 2 - Blocked").resizable()    .frame(width: 100, height: 100)
                                
                            }
                            NavigationLink (destination: ConquistouView(x: ac11, y:"Mestre 3 - Blocked")){
                                Image("Mestre 3 - Blocked").resizable()    .frame(width: 100, height: 100)
                                
                            }
                        } .padding(.bottom, 50).padding(.trailing)
                        Spacer()
                        
                        
                    }
                }
            }.ignoresSafeArea()
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
