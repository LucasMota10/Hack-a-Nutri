//
//  InicianteView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 11/12/23.
//

import SwiftUI

struct InicianteView: View {
    var x: Int
    var y: String
    var body: some View {
        ZStack {
            Color.black
            VStack {
                VStack(alignment: .center) {
                    Text("Parabéns! Você completou ").foregroundColor(Color("FonteProgress")).fontWeight(.bold).font(.system(size: 25)).frame(width: 320).padding(.bottom, 1)
                    Text("\(x) treinos!").foregroundColor(Color("FonteProgress")).fontWeight(.bold).font(.system(size: 25)).frame(width: 320)
                }.padding(.top, 80)
                Spacer()
                VStack {
                    Image(y).resizable().frame(width: 200, height: 200)
                }.padding(.bottom, 100)
                
                VStack {
                    Button {
                        print("Button pressed")
                    } label: {
                        Text("Compartilhar")
                            .padding(.horizontal, 20).padding(.vertical, 10)
                    }
                    .contentShape(Rectangle()).foregroundColor(Color.black)
                } .padding(.bottom, 50) .buttonStyle(.borderedProminent).tint(Color("FonteProgress"))
                
            }
            
        }.ignoresSafeArea()
    }
}

struct InicianteView_Previews: PreviewProvider {
    static var previews: some View {
        InicianteView(x: 5, y:"Iniciante 1")
    }
}
