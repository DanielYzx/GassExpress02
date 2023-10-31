//
//  Registro.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/16/23.
//

import SwiftUI

struct Registro: View {
    
    @State private var nombre: String = ""
    @State private var apellido: String = ""
    @State private var dirrecion: String = ""
    @State private var correo: String = ""
    @State private var usuario: String = ""
    @State private var contra: String = ""
    @State private var confcontra: String = ""

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Nombre:")
                        .font(.headline)
                        .padding(.top, 10)
                    TextField("Ingrese su nombre...", text: $nombre)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                    Text("Apellido:")
                        .font(.headline)
                        .padding(.top, 10)
                    TextField("Ingrese su apellido...", text: $apellido)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                    Text("Dirección:")
                        .font(.headline)
                        .padding(.top, 10)
                    TextEditor(text: $dirrecion)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3)) // Establece el color de fondo directamente
                        .cornerRadius(6)
                        .overlay(
                            Text("Ingrese su dirección...") // Agrega un placeholder
                                .padding(10)
                        )
                    Text("Correo:")
                        .font(.headline)
                        .padding(.top, 10)
                    TextField("Ejemplo@gmail.com...", text: $correo)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                    
                    
                    
                  
                    Button("Guardar") {
                        // Aquí puedes guardar la información ingresada por el usuario.
                        print("Usuario: \(nombre)")
                        print("Apellido: \(apellido)")
                        print("Dirrecion: \(dirrecion)")
                        print("Correo: \(correo)")
                        print("Usuario: \(usuario)")
                        print("Contraseña: \(contra)")
                        print("Confirmar contraseña: \(confcontra)")
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
            .navigationBarTitle("Datos Personales")
            .navigationBarItems(leading:
                            NavigationLink(destination: ContentView()) {
                                Text("Atrás")
                                    .font(.headline)
                })
        }

    }
}

struct Registro_Previews: PreviewProvider {
    static var previews: some View {
        Registro()
    }
}

