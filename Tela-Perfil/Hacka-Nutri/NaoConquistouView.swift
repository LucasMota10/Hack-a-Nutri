//
//  NaoConquistouView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 12/12/23.
//

import SwiftUI

struct NaoConquistouView: View {
    var x: Int
    var y: String
    var z: Int
    var w: String
    @State var porcentagem: Float = 0.0
    var body: some View {
        ZStack {
            Color.black
            VStack {
                VStack(alignment: .center) {
                    Text(w).foregroundColor(Color(.systemGray4)).fontWeight(.bold).font(.system(size: 25)).frame(width: 330).padding(.bottom, 10)
                    Spacer()
                    Text("Você receberá esta conquista quando completar \(x) treinos! ").foregroundColor(Color(.systemGray4)).fontWeight(.bold).font(.system(size: 25)).frame(width: 330).padding(.bottom, 30)
                }.padding(.top, 30)
                Spacer()
                VStack {
                    Image(y).resizable().frame(width: 200, height: 200)
                }.padding(.bottom, 100)
                
                VStack {
                    ProgressView(value: div(a:z, b:x),
                                 label: { Text("Progresso") },
                                 currentValueLabel: { Text("\(String(format: "%.0f", (div(a:z, b:x)*100)))%") }).frame(width: 250).tint(Color("Progress")).foregroundColor(.white)
                        
                }.padding(.bottom, 50)
            }
            
        }.ignoresSafeArea()
    }
}

struct NaoConquistouView_Previews: PreviewProvider {
    static var previews: some View {
        NaoConquistouView(x: 50, y:"Iniciante 2 - Blocked", z: 5, w:"Mestre 1")
    }
}

func div(a: Int, b: Int) -> Float{
    return (Float(a)/Float(b))
}

func pct(c: Float) -> Float {
    return c*100
}
