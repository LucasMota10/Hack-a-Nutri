//
//  ViewModel.swift
//  Projeto API Harry Potter
//
//  Created by Student07 on 27/11/23.
//

import Foundation

struct food: Decodable, Hashable {
    let id: identifica
    let descricao: String
    let quantidade: String
    let calorias: String
}

struct identifica: Decodable, Hashable {
    let timestamp: Int
    let date: String
}

class ViewModel : ObservableObject{
    
    @Published var comida : [food] = []
    
    func fetch(digita: String){
        
        guard let url = URL(string: "https://caloriasporalimentoapi.herokuapp.com/api/calorias/?descricao=\(digita)") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with:url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed  = try JSONDecoder().decode([food].self,from: data)
                
                DispatchQueue.main.async {
                    self?.comida = parsed
                }
            }catch{
                print(error)
            }
        }
        
        
        task.resume()
        
        
    }
    
}



