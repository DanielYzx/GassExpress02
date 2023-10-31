//
//  EstacionesView.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/18/23.
//

import SwiftUI

struct EstacionesView: View {
    var body: some View {
        NavigationView { // Envuelve la vista en un NavigationView
            List {
                NavigationLink(destination: GasoUno()) {
                    EstacionRow(imageName: "gasuno", stationName: "Gasolinera Uno")
                }

                NavigationLink(destination: GasoUno()) {
                    EstacionRow(imageName: "gastexaco", stationName: "Gasolinera Texaco")
                }

                NavigationLink(destination: GasoUno()) {
                    EstacionRow(imageName: "gaspuma", stationName: "Gasolinera Puma")
                }
                // Agrega más estaciones aquí si es necesario
            }
            //.listStyle(GroupedListStyle()) // Establece el estilo de lista a agrupada
        }
    }
}
struct EstacionRow: View {
    var imageName: String
    var stationName: String

    var body: some View {
        HStack(spacing: 40) { // Aumenta el espacio horizontal entre la imagen y el texto
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            Text(stationName)
                .bold()
                .font(.system(size: 20))

            Spacer()
        }
        .padding(.vertical, 10) // Aumenta el espacio vertical
    
    }

}
