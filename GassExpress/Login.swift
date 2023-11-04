//
//  Login.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/31/23.
//

import SwiftUI

struct Login: View {
    @State var user: String = ""
    @State var password: String = ""
    
    // Añade estados para controlar la navegación a las diferentes pantallas
        @State var isShowingActualizarC = false
        @State var isShowingRegistro = false
        @State var isShowingPrincipal = false
    var body: some View {
        NavigationView{
            VStack{
               
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 190)
                    .clipped()
            
                
                Text("Bienvenidos  ")
                    .bold()
                    .font(.system(size: 24))
                Text(" a ")
                    .bold()
                    .font(.system(size: 24))
                Text("Gass Express")
                    .bold()
                    .font(.system(size: 24))
                VStack(alignment: .leading){
                    // Título de Usuario
                    Text(  "Usuario:")
                        .font(.headline)
                        .padding(.top, 10)
                        .padding(.horizontal, 60)

                    TextField("Usuario", text: $user)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal, 60)
                    // Título de Contraseña
                    Text("Contraseña:")
                        .font(.headline)
                        .padding(.top, 10)
                        .padding(.horizontal, 60)

                    SecureField("Password", text: $password)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal, 60)
                    
                    NavigationLink(destination: ActualizarC(), isActive: $isShowingActualizarC) {
                        EmptyView()
                    }
                    Button(action: {
                        isShowingActualizarC = true // Activa la navegación a ActualizarC
                    }) {
                        Text("Olvidaste tu contraseña?")
                            .underline()
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.top, 10)
                            .padding(.horizontal, 10)
                    }
        
                    .buttonStyle(PlainButtonStyle())
                    
                    
                    Button("Iniciar Sesión") {
                        // Realiza aquí la lógica de inicio de sesión si es necesario
                        isShowingPrincipal.toggle()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "64CCC5"))
                    .foregroundColor(Color.white)
                    .font(.system(size: 18))
                    .cornerRadius(6)
                    
                    .fullScreenCover(isPresented: $isShowingPrincipal) {
                        Principal()
                    }
                    
                    NavigationLink(destination: Registro(), isActive: $isShowingRegistro) {
                        EmptyView()
                    }
                    // Agrega la navegación a "Registro"
                    Button(action: {
                        isShowingRegistro = true
                    }) {
                        Text("No tienes cuenta? Regístrate")
                            .underline()
                            .foregroundColor(.blue)
                            .font(.system(size: 18))
                            .padding(.top, 10)
                            .padding(.horizontal, 60)
                            .padding(10)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                }
                Spacer()
               
            }
    
            .navigationBarHidden(true) // Ocultar la barra de navegación
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}
