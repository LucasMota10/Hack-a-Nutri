//
//  ContentView.swift
//  Tela.calendário
//
//  Created by Student11 on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        ZStack{
           
            Color("Amarelo")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack{
                    Image("calendario")
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                    Text("Calendário")
                        .font(.largeTitle)
                        .bold()
                    
                }
                
                DatePicker("Selecione uma data", selection: $selectedDate, displayedComponents: .date)
                   
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                Text("Data Selecionada: \(formattedDate())")
                    .bold()
                
                Spacer()
                Spacer()

            }
        }
    }
    
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: selectedDate)
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
