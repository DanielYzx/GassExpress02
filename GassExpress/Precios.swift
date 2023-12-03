//
//  Precios.swift
//  GassExpress
//
//  Created by Samuel Menendez on 12/2/23.
//

import SwiftUI

struct Precios: View {
    var body: some View {
        VStack{
            Text("Precios del combustible")
                .foregroundColor(.black)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 10)
            Divider()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .padding()
           
            Image("combustible")
                .resizable()
                .frame(width: 350, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            
        }
    }
}

struct Precios_Previews: PreviewProvider {
    static var previews: some View {
        Precios()
    }
}
