//
//  GasPuma.swift
//  GassExpress
//
//  Created by Samuel Menendez on 12/2/23.
//

import SwiftUI

struct Gasolinerapuma {
    var name: String
    var address: String
    var imageName: String
}


struct GasPuma: View {
    let estaciones: [Gasolinerapuma] = [
        Gasolinerapuma(name: "Puma.Los Héroes", address: "Boulevard Los Heroes y Calle Los Sismiles ", imageName: "gaspuma"),
        Gasolinerapuma(name: "Puma.San Benito", address: "Alameda Manuel Enrique Araujo 103, San Salvador", imageName: "gaspuma"),
        Gasolinerapuma(name: "Puma.Los Próceres", address: "Blvr. Los Proceres, San Salvador", imageName: "gaspuma"),
        Gasolinerapuma(name: "Puma.San Jacinto", address: "Calle San Jacinto, Av. Los Diplomáticos 211, San Salvador", imageName: "gaspuma"),
        Gasolinerapuma(name: "Puma.Modelo", address: "Frente a la Col. Modelo, KM 53 Carretera Planes de Renderos", imageName: "gaspuma")
        // Agrega más estaciones aquí si es necesario
    ]

    var body: some View {
        
            List(estaciones, id: \.name) { estacion in
                NavigationLink(destination: GasPumaDet()) {
                    GasPumadetRow(imageName: estacion.imageName, stationName: estacion.name, stationAddress: estacion.address)
                }
            }
        }
    
}


struct GasPumadetRow: View {
    var imageName: String
    var stationName: String
    var stationAddress: String

    var body: some View {
        HStack(spacing: 40) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text(stationName)
                    .bold()
                    .font(.system(size: 20))
                Text(stationAddress)
                    .font(.system(size: 14))
            }

            Spacer()
        }
        .padding(.vertical, 10)
    }
}


struct GasPuma_Previews: PreviewProvider {
    static var previews: some View {
        GasPuma()
    }
}

