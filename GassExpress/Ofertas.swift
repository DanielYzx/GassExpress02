//
//  Ofertas.swift
//  GassExpress
//
//  Created by Samuel Menendez on 11/9/23.
//

import SwiftUI

struct Ofertas: View {
    var body: some View {
        ScrollView  (.vertical, showsIndicators:false){VStack{
            Text("Promociones")
                .foregroundColor(.black)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 10)
            Divider()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .padding()
            
            Image("promo1")
                .resizable()
                .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Image("promo2")
                .resizable()
                .frame(width: 250, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Image("promo3")
                .resizable()
                .frame(width: 250, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Image("promo4")
                .resizable()
                .frame(width: 250, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Image("promo5")
                .resizable()
                .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
        }
        }
    }
}

struct Ofertas_Previews: PreviewProvider {
    static var previews: some View {
        Ofertas()
    }
}
