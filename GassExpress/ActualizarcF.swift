//
//  ActualizarcF.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI

struct ActualizarcF: View {
    @State private var usuario: String = ""
    @State private var contran: String = ""
    @State private var confcontran: String = ""

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Usuario:")
                        .font(.headline)
                        .padding(.top, 10)
                    TextField("Ingrese su usuario...", text: $usuario)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                    
                    Button("Aceptar") {
                        // Aquí puedes guardar la información ingresada por el usuario.
                        print("Usuario: \(usuario)")
                       
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "#64CCC5"))
                    .font(.system(size: 16))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(10)
                    
                    Text(  "Lo sentimos el usuario ingresado no existe!!")
                        .foregroundColor(.black)
                        .font(.system(size: 18))
                        .font(.headline)
                        .padding(10)
                   

                  
                    Button("Guardar") {
                        // Aquí puedes guardar la información ingresada por el usuario.
                        print("Usuario: \(usuario)")
                        print("Contraseña: \(contran)")
                        print("Confirmar contraseña: \(confcontran)")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .font(.system(size: 16))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(10)
                }
                .padding()
            }
            .navigationBarTitle("Actualizar Clave")
            .navigationBarItems(leading:
                            NavigationLink(destination: ContentView()) {
                                Text("Atrás")
                                    .font(.headline)
                })
        }

    }
}

struct ActualizarcF_Previews: PreviewProvider {
    static var previews: some View {
        ActualizarcF()
    }
}
