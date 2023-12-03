//
//  Principal.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI

struct Principal: View {
    @State private var selectedTab = 1
    @State private var isMenuOpen = false

    var body: some View {
        
        TabView(selection: $selectedTab) {
    
            //Text("Pantalla 1")
                Horarios()
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("Precios")
                }
                .tag(0)
            
            EstacionesView()
                .tabItem {
                    Image(systemName: "loupe")
                    Text("Estaciones")
                }
                .tag(1)
            
            
            //Text("Pantalla 3")
                Ofertas()
                .tabItem {
                    Image(systemName: "giftcard")
                    Text("Ofertas")
                }
                .tag(2)
        }
        .onAppear {
            selectedTab = 1
        }
    }
}


struct Principal_Previews: PreviewProvider {
    static var previews: some View {
        Principal()
    }
}


