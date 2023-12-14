//
//  LinkTreinoIntermediario.swift
//  projetoHackaNutri
//
//  Created by Student05 on 11/12/23.
//

import SwiftUI

struct MyVariables2 {
    static var listItemsGlobal2 : [Item2] = []
}

struct Item2: Hashable {
    var id: Int
    var name: String
    var carga: String
    var repeticoes: String
    
}


struct LinkTreinoIntermediario: View {
    
    @State private var items: Item2 = Item2(id:0, name: "", carga: "", repeticoes: "")
    
    @State var listItems : [Item2] = []
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("corHackaNutri"), .orange]), startPoint: .trailing, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center, spacing: -20) {
                    
                    Spacer()
                        .frame(width: 20.0, height: 20.0)
                
                    HStack {
                        TextField("Exercício", text: $items.name)
                        
                            .frame(width: 170, height: 50.0)
                            .textFieldStyle(.roundedBorder)
                        
                        TextField("Repetições", text: $items.carga)
                            .frame(width: 120, height: 0.0)
                            .keyboardType(.numberPad)
                            .textFieldStyle(.roundedBorder)
                        TextField("Carga", text: $items.repeticoes)
                            .keyboardType(.numberPad)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 60, height: 0.0)
                        
                    }
                    Spacer()
                        .frame(width: 0.0, height: 60.0)
                    
                    Button(action: {
                        self.addItem(item: Item2(id: 2, name:items.name, carga:items.carga,repeticoes:items.repeticoes))
                    }) {
                        Text("Adicionar Item")
                        
                    }
                    
                    Spacer()
                        .frame(width: 30.0, height: 80.0)
                    Text("Exercício                    Repetições    Carga")
                        .bold()
                        
                    List {
                        
                        VStack {
                            ForEach(listItems, id: \.self) { item in
                                HStack{
                                    Text(item.name)
                                        .frame(width: 190, height: 30.0, alignment: .leading)
                                    Text(item.carga)
                                        .frame(width: 70, height: 0.0, alignment: .leading)
                                    Text(item.repeticoes)
                                        .frame(width: 40, height: 0.0, alignment: .leading)
                                }
                            }.onDelete(perform: deleteItems)
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
                .navigationTitle("Ficha de Treino B")
                .onAppear(){
                    for items in  MyVariables2.listItemsGlobal2 {
                        listItems.append(items)
                    }
                }
            }
        }
    }
    func addItem(item: Item2) {
        listItems.append(item)
        MyVariables2.listItemsGlobal2.append(item)
    }
    func deleteItems(at offsets: IndexSet) {
        listItems.remove(atOffsets: offsets)
    }
}



struct LinkTreinoIntermediario_Previews: PreviewProvider {
    static var previews: some View {
        LinkTreinoIntermediario()
    }
}
