//
//  CountryListViewModel.swift
//  Assignment6
//
//  Created by Vyshnavi Koleti on 10/6/23.
//

import Foundation
import SwiftUI

class CountryListViewModel: ObservableObject {
    @Published var countries = [Country]()
    
    func getAllCountries() async {
        do {
            let url = URL(string: "https://restcountries.com/v3.1/all")!
            let (data, _) = try await URLSession.shared.data(from: url)
            countries = try JSONDecoder().decode([Country].self, from: data)
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}
