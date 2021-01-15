//
//  KeyboardCalcView.swift
//  Toil
//
//  Created by German Zvezdin on 15.01.2021.
//

import SwiftUI

struct KeyboardCalcView: View {
    @Binding var isPresented: Bool
    var body: some View {
        NavigationView{
            Form{
                
                
            }
            .navigationBarTitle("Hello")
            .navigationBarItems(trailing:
                Button(action: {
                    self.isPresented.toggle()
                }){
                    Image(systemName: "chevron.down.circle.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.black) 
                }
            )
            
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct KeyboardCalcView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardCalcView(isPresented: .constant(true))
    }
}
