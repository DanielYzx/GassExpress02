//
//  MenuView.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI

struct MenuView: View {
    @Binding var isMenuOpen: Bool

    var body: some View {
        List {
            Section(header: Text("Menú")) {
                NavigationLink(destination: Text("Pantalla 1")) {
                    Label("Horarios", systemImage: "clock.arrow.circlepath")
                }
                NavigationLink(destination: Text("Pantalla 2")) {
                    Label("Estaciones", systemImage: "loupe")
                }
                NavigationLink(destination: Text("Promociones")) {
                    Label("Ofertas", systemImage: "giftcard")
                }
            }
        }
        .frame(width: isMenuOpen ? 200 : 0)
        .animation(.default)
    }
}

