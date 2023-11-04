//
//  Usuario.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI

struct Usuario: View {
    @State private var nombre: String = ""
    @State private var apellido: String = ""
    @State private var dirrecion: String = ""
    @State private var correo: String = ""
    @State private var usuario: String = ""
    @State private var contra: String = ""
    @State private var confcontra: String = ""
    
    @State var isShowingLogin = false
    @State var isShowingPrincipal = false

    var body: some View {
        NavigationView {
            VStack{
                VStack(alignment: .leading){
                    Text("Registro de usuario")
                        .font(.title)
                        .bold()
                        .padding(.top, 20)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
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
                    
                    
                    
                    Text("Contraseña:")
                        .font(.headline)
                        .padding(.top, 12)

                    SecureField("Ingrese su contraseña", text: $contra)
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
            

                    SecureField("Confirme su contraseña", text: $confcontra)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(10)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(5)

                  
                    Button("Guardar") {
                        // Aquí puedes guardar la información ingresada por el usuario.
                        // Realiza aquí la lógica de inicio de sesión si es necesario
                        isShowingPrincipal.toggle()
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
                    
                    .fullScreenCover(isPresented: $isShowingPrincipal) {
                        Principal()
                    }
                   
                    Button(action: {
                        isShowingLogin.toggle()
                    }) {
                        Text("Cancelar")
                            .underline()
                            .foregroundColor(.blue)
                            .font(.system(size: 18))
                            .padding(.top, 10)
                            .padding(.horizontal, 140)
                            .padding(10)
                            .fullScreenCover(isPresented: $isShowingLogin) {
                                Login()
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
               // Spacer()
                }
                Spacer()
            }
            .padding(.top)
            .navigationBarHidden(true) // Ocultar la barra de navegación
        }
    }
            
        }




struct Usuario_Previews: PreviewProvider {
    static var previews: some View {
        Usuario()
    }
}
