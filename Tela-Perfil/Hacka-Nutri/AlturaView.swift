//
//  AlturaView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 12/12/23.
//

import SwiftUI

struct AlturaView: View {
    
    @State var altura: Float = 0
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.zeroSymbol  = ""
            return formatter
        }()
    
    @State var alturaAtual: String = "1.65"
    var body: some View {
        ZStack {
            Color("Progress")
            VStack {
                VStack {
                    Text("Altura").foregroundColor(.white).fontWeight(.bold).font(.system(size: 30))
                }.padding(.top, 50)
                Spacer()
                VStack {
                    HStack {
                        Text("Digite sua altura:")
                        TextField("Altura", value: $altura, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 70)
                    } .padding(.leading, 5).padding(.bottom, 15).padding(.top, 100)
                    
                        let formattedFloat = String(format: "%.2f", altura)
                    Text("Altura atual:  \(alturaAtual) m").foregroundColor(.white).fontWeight(.bold).font(.system(size: 20))
                    
                    VStack {
                        Button {
                           alturaAtual = formattedFloat
                        } label: {
                            Text("Salvar")
                                .padding(.horizontal, 20).padding(.vertical, 10)
                        }
                        .contentShape(Rectangle()).foregroundColor(Color.black)
                    } .padding(.top, 200) .buttonStyle(.borderedProminent).tint(Color(.white))
                }
                Spacer()
                
            }
        }.ignoresSafeArea()
    }
}

struct AlturaView_Previews: PreviewProvider {
    static var previews: some View {
        AlturaView()
    }
}
