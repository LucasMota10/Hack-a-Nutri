//
//  ViewModel.swift
//  Projeto API Harry Potter
//
//  Created by Student07 on 27/11/23.
//

import Foundation


class ViewModel : ObservableObject{
    
    @Published var comida : [food] = []
    
    func fetch(){
        
        guard let url = URL(string: "https://raw.githubusercontent.com/danperrout/tabelataco/master/public/TACO.json") else{
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



