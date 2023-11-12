//
//  MenuView.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/17/23.
//

import SwiftUI



struct MenuView: View {
    var body: some View {
      Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}


struct Home: View {
    @State var dark = false
    @State var show = false
    var body: some View {
        //NavigationView{
           // VStack{
        ZStack(alignment: .leading){
            GeometryReader{_ in
                
                VStack{
                    
                    ZStack{
                        
                        HStack{
                            
                            Button(action:{
                                
                                withAnimation(.default){
                                    self.show.toggle()
                                }
                                
                            }){
                                
                                Image("menu")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                
                            }
                               Spacer()
                        }
                        
                        //Text("Home")
                        
                    }
                    
                    .padding()
                    .foregroundColor(.primary)
                    .overlay(Rectangle().stroke(Color.primary.opacity(0.1), lineWidth: 1).shadow(radius: 3).edgesIgnoringSafeArea(.top))
                    
                    Spacer()
                    
                Principal()
                    
                    Spacer()
                }
            }
            
            HStack{
                Menu(dark: self.$dark, show: self.$show)
                    .preferredColorScheme(self.dark ? .dark : .light)
                    .offset(x: self.show ? 0 : -UIScreen.main.bounds.width / 1.5 )
                
                Spacer(minLength: 0)
            }
            .background(Color.primary.opacity(self.show ? (self.dark ? 0.05 : 0.02) : 0).edgesIgnoringSafeArea(.all))
            
        
        }
            //    Spacer()
           // }
       // .padding(.top)
        //.navigationBarHidden(true) // Ocultar la barra de navegación
      
    //}
        
    }
    
}



struct Menu: View {
    @Binding var dark : Bool
    @Binding var show : Bool
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    
                    withAnimation(.default){
                        self.show.toggle()
                    }
                    
                    
                }) {
                    Image(systemName:"arrowtriangle.backward.fill")
                        //.resizable()
                        //.frame(width: 12, height: 20)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                Button(action: {
                    
                }){
                    Image(systemName: "square.and.pencil")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image("user3")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 12){
                Text("Karen")
                
                Text("Developer")
                    .font(.caption)
            }
            .padding(.top, 25)
            
            HStack(spacing: 22){
                Image(systemName: "moon.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Dark Mode")
                
                Spacer()
                
                Button(action: {
                    
                    self.dark.toggle()
                    
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle = self.dark ? .dark : .light
                    
                }){
                    Image("on")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .rotationEffect(.init(degrees: self.dark ? 180 : 0))
                }
            }
            .padding(.top, 25)
         
            Group{
               
                
                Button(action: {
                  
                    
                }){
                
                
                    HStack(spacing: 22){
                        Image("gassblue")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                        
                        Text("Estaciones                      ")
                        Spacer()
                    }
                
                }
                .padding(.top, 25)
                
                
                
                Button(action: {
                    
                }){
                    HStack(spacing: 22){
                        Image("timeblue")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                        
                        Text("Horarios                          ")
                        Spacer()
                    }
                }
                .padding(.top, 25)
                
               
                
                Button(action: {
                    
                    
                }){
                    HStack(spacing: 22){
                        Image("giftblue")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                        
                        Text("Ofertas                           ")
                        Spacer()
                    }
                }
                .padding(.top, 25)
                
                
                Divider()
                    .padding(.top, 25)
                
                
                Button(action: {
                
                }){
                    HStack(spacing: 22){
                        Image("personblue")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                        
                        Text("Cerrar Sesión                      ")
                    }
                }
                .padding(.top, 25)
                
                
            }
            
            Spacer()
        }
       .foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 1.5)
        .background((self.dark ? Color.black : Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        
        
        
    }
}



