//
//  GasoUno.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/18/23.
//

import SwiftUI

struct Gasolinera {
    var name: String
    var address: String
    var imageName: String
}


struct GasoUno: View {
    let estaciones: [Gasolinera] = [
        Gasolinera(name: "UNO.Los Héroes", address: "Boulevard Los Heroes y Calle Los Sismiles ", imageName: "gasuno"),
        Gasolinera(name: "UNO.San Benito", address: "Alameda Manuel Enrique Araujo 103, San Salvador", imageName: "gasuno"),
        Gasolinera(name: "UNO.Los Próceres", address: "Blvr. Los Proceres, San Salvador", imageName: "gasuno"),
        Gasolinera(name: "UNO.San Jacinto", address: "Calle San Jacinto, Av. Los Diplomáticos 211, San Salvador", imageName: "gasuno"),
        Gasolinera(name: "UNO.Modelo", address: "Frente a la Col. Modelo, KM 53 Carretera Planes de Renderos", imageName: "gasuno")
        // Agrega más estaciones aquí si es necesario
    ]

    var body: some View {
        
            List(estaciones, id: \.name) { estacion in
                NavigationLink(destination: GasoUnoDet(gasolineraName: estacion.name, gasolineraDirec: estacion.address)) {
                    GasoUnodetRow(imageName: estacion.imageName, stationName: estacion.name, stationAddress: estacion.address)
                }
            }
        }
    
}


struct GasoUnodetRow: View {
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


struct GasoUno_Previews: PreviewProvider {
    static var previews: some View {
        GasoUno()
    }
}
