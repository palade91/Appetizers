//
//  AppetizerListViewModel.swift
//  Appetizers SwiftUI
//
//  Created by Catalin Palade on 29/12/2020.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
