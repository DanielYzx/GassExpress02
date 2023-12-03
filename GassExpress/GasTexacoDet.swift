//
//  GasTexacoDet.swift
//  GassExpress
//
//  Created by Samuel Menendez on 12/2/23.
//

import SwiftUI

struct GasTexacoDet: View {
    var gasolineraName: String
    var gasolineraDirec: String
    var body: some View {
        // Cambia el color de fondo a tu preferencia
        Color("gris")
            .edgesIgnoringSafeArea(.all) // Ignora los límites seguros para que el color de fondo se extienda por toda la pantalla
            
            .overlay(
                VStack {
                    Text("Gasolinera: \(gasolineraName)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black) // Cambia el color del texto si es necesario
                    
                    Image("gastexaco")
                        .resizable()
                        .frame(width: 150, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Group{
                        Text("Ubicacion:")
                            
                        Text("\(gasolineraDirec) ")

                            
                        
                        Divider()
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                            .padding()
                        VStack{
                            HStack{
                                Text("Tipo:")
                                    
                                    .padding(.trailing)
                      
                                
                                Text("Precio:")
                                    
                                    .padding(.leading)
                                
                                
                            }
                            
                            HStack{
                                Text("Diesel:  ")
                                   
                                    .padding(.trailing)
                      
                                
                                Text("$ 4.40")
                                    
                                    .padding(.leading)
                                
                                
                            }
                            HStack{
                                Text("Regular:")
                                   
                                    .padding(.trailing)
                      
                                
                                Text("$ 3.48")
                                    
                                    .padding(.leading)
                                
                                
                            }
                            HStack{
                                Text("Especial:")
                                   
                                    .padding(.trailing)
                      
                                
                                Text("$ 5.50")
                                    
                                    .padding(.leading)
                                
                                
                            }
                        }
                        
                    }
                    
                    Button("Aceptar") {
                      
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(10)
                    .background(Color(hex: "#64CCC5"))
                    .font(.system(size: 18))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(10)
                    .shadow(radius: 10 )

                    
                    Spacer()
                    
                }
                
            )
    }
}

struct GasTexacoDet_Previews: PreviewProvider {
    static var previews: some View {
        GasTexacoDet(gasolineraName: "NombreDePrueba", gasolineraDirec: "direccion1")
    }
}
