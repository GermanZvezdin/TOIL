//
//  ContentView.swift
//  Toil
//
//  Created by German Zvezdin on 14.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State var KeyCalView: Bool = false
    @State var PhotoCalView: Bool = false
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundColor(Color.init(#colorLiteral(red: 0.06581044942, green: 0.152708441, blue: 0.2623071969, alpha: 1)))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 25){
            
                Text("История")

                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                    
                
                
                
                Capsule()
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)))
                    .shadow(color: Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)), radius: 10)
                    
                
                Capsule()
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)))
                    .shadow(color: Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)), radius: 10)
                Capsule()
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)))
                    .shadow(color: Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)), radius: 10)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            VStack{
                Spacer()
                HStack(spacing: 130){
                    Button(action: {
                        self.KeyCalView.toggle()
                    })
                    {
                        Image(systemName: "keyboard")
                            .font(.system(size: 30))
                            .frame(width: 90 , height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
        
                            .background(Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)))
                            
                            .cornerRadius(40)
                            .shadow(color: Color.init(#colorLiteral(red: 0.927182138, green: 0.1656763554, blue: 0.559740603, alpha: 1)), radius: 10)
                            .padding(3.0)
                    }.sheet(isPresented: $KeyCalView) {
                        KeyboardCalcView(isPresented: $KeyCalView)
                        
                            
                    }
                    
                    Button(action: {
                        
                    })
                    {
                        Image(systemName: "camera")
                            .font(.system(size: 30))
                            .frame(width: 90 , height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            
                            .background(Color.init(#colorLiteral(red: 0.9238878489, green: 0.1650753319, blue: 0.559730351, alpha: 1)))
                            
                            .cornerRadius(40)
                            .shadow(color: Color.init(#colorLiteral(red: 0.927182138, green: 0.1656763554, blue: 0.559740603, alpha: 1)), radius: 10)
                            .padding(3.0)
        
                            
                    }
                
                    
                }
                
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
