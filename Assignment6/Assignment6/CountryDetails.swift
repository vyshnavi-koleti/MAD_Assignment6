//
//  CountryDetails.swift
//  Assignment6
//
//  Created by Vyshnavi Koleti on 10/6/23.
//

import Foundation
import SwiftUI

struct CountryDetails: View {
    var country: Country
    
    var body: some View {
        Text("Flag : \(country.flag)")
            .font(.title)
            .padding()
        Text("Country Name : \(country.name.common)")
            .italic()
            .font(.headline)
            .navigationTitle("Country Details")
            .padding()
        Text("Official Country NAme : \(country.name.official)")
            .padding()
        Text("Translations: \(country.translations.ara.common)")
            .padding()
        Text("Car-Side: \(country.car.side)")
            .padding()
        Text("Population : \(country.population)")
            .font(.subheadline)
            .padding()
        if let currencies = country.currencies {
                    ForEach(currencies.keys.sorted(), id: \.self) { key in
                        if let currency = currencies[key], let name = currency.name {
                            Text("Currency: \(name)")
                                .padding()
                        }
                    }
                }
//        if let timeZones = country.timeZones {
//                    Text("Time Zones:")
//                        .font(.headline)
//                    ForEach(timeZones, id: \.self) { timeZone in
//                        Text(timeZone)
//                    }
//                }
//
    }
}
