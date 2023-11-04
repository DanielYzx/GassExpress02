//
//  ActualizarC.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI


struct ActualizarC: View {
    @State private var usuario: String = "juan"
    @State private var contran: String = ""
    @State private var confcontran: String = ""
    @State private var usuarioExiste = false // Variable de estado para rastrear si el usuario existe
    @State private var isShowingLogin = false
    @State private var mostrarMensajeError = false
    

    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Actualizar Clave")
                        .font(.title)
                        .bold()
                        .padding(.top, 20)
                        .multilineTextAlignment(.leading)

                    Text("Usuario:")
                        .font(.headline)
                        .padding(.top, 12)
                    TextField("Ingrese su usuario...", text: $usuario)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(10)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(5)

                    Button("Aceptar") {
                        // Realiza la validación del usuario aquí
                        //if usuarioExiste {
                            // Mostrar los campos adicionales
                           // usuarioExiste = true
                        if usuario=="juan"{
                            usuarioExiste = true
                        } else {
                            // Mostrar un mensaje de error
                            // Puedes mostrar una alerta o un mensaje en lugar de cambiar la variable de estado
                           // print("Usuario no encontrado. Mostrar mensaje de error.")
                            mostrarMensajeError = true
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "#64CCC5"))
                    .font(.system(size: 18))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(10)

                    if usuarioExiste {
                        // Mostrar los campos adicionales si el usuario existe
                        Text("Contraseña:")
                            .font(.headline)
                            .padding(.top, 12)

                        SecureField("Ingrese su contraseña", text: $contran)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .padding(10)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(6)
                            .padding(5)

                        Text("Confirmar Contraseña:")
                            .font(.headline)
                            .padding(.top, 12)

                        SecureField("Confirme su contraseña", text: $confcontran)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .padding(10)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(6)
                            .padding(5)

                        Button("Guardar") {
                            // Realiza la lógica de guardar la información aquí
                            isShowingLogin.toggle()
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

                        .fullScreenCover(isPresented: $isShowingLogin) {
                            Login()
                        }
                    }
                }
                
                if mostrarMensajeError {
                                    Text("Usuario no válido. Por favor, ingrese un usuario válido.")
                                        .foregroundColor(.red)
                                        .font(.headline)
                                }
                
                Spacer()
            }
            .padding(.top)
            .navigationBarHidden(true)
        }
    }
}

struct ActualizarC_Previews: PreviewProvider {
    static var previews: some View {
        ActualizarC()
    }
}

