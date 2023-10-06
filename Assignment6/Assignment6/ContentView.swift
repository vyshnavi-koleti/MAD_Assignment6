//
//  ContentView.swift
//  Assignment6
//
//  Created by Vyshnavi Koleti on 10/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = CountryListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.countries) { country in
                NavigationLink(destination: CountryDetails(country: country)) {
                    Text("\(country.name.common)")
                }
            }
            .task {
                await viewModel.getAllCountries()
            }
        }
        .navigationTitle("Countries")
    }
}

#Preview {
    ContentView()
}
