//
//  SegundaVista.swift
//  ObservedObjectTutorial
//
//  Created by Ingeniero Fernando on 23/08/20.
//  Copyright © 2020 Ingeniero Fernando. All rights reserved.
//

//import SwiftUI
//
//struct SegundaVista: View {
//    @Binding var num: Int
//    var body: some View {
//        VStack {
//            Button(action:{
//                // Acción a ejecutar al presionar
//                self.num += 1
//            }){
//                // formato del botón
//                HStack{
//                    Text("Contador = \(self.num)")
//                        .foregroundColor(.white)
//                        .font(.headline)
//                }.padding(.all)
//            }.background(Color.orange)
//                .cornerRadius(14.0)
//        }
//    }
//}
//
//struct SegundaVista_Previews: PreviewProvider {
//    static var previews: some View {
//        SegundaVista(num: .constant(0))
//    }
//}

import SwiftUI

struct SegundaVista: View {
    @EnvironmentObject var num: NumeroRandom
    var body: some View {
        VStack {
            Button(action:{
                // Acción a ejecutar al presionar
                self.num.contador += 1
            }){
                // formato del botón
                HStack{
                    Text("Contador = \(self.num.contador)")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.orange)
                .cornerRadius(14.0)
        }
    }
}

struct SegundaVista_Previews: PreviewProvider {
    static var previews: some View {
        SegundaVista()
    }
}
