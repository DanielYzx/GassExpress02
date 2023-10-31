//
//  ActualizarC.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI

struct ActualizarC: View {
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
                    
                    Text("Contraseña:")
                        .font(.headline)
                        .padding(.top, 10)
            

                    SecureField("Ingrese su contraseña", text: $contran)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(10)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                    
                    Text("Confirmar Contraseña:")
                        .font(.headline)
                        .padding(.top, 10)
            

                    SecureField("Confirme su contraseña", text: $confcontran)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(10)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)

                  
                    Button("Guardar") {
                        // Aquí puedes guardar la información ingresada por el usuario.
                        print("Usuario: \(usuario)")
                        print("Contraseña: \(contran)")
                        print("Confirmar contraseña: \(confcontran)")
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

struct ActualizarC_Previews: PreviewProvider {
    static var previews: some View {
        ActualizarC()
    }
}
