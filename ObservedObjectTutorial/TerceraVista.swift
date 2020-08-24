//
//  TerceraVista.swift
//  ObservedObjectTutorial
//
//  Created by Ingeniero Fernando on 23/08/20.
//  Copyright © 2020 Ingeniero Fernando. All rights reserved.
//

import SwiftUI

struct TerceraVista: View {
    @EnvironmentObject var num: NumeroRandom
    var body: some View {
        VStack {
            Spacer()
            Button(action:{
                // Acción a ejecutar al presionar
                self.num.contador += 1
            }){
                // formato del botón
                HStack{
                    Text("Contador (3era vista) = \(self.num.contador)")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.gray)
                .cornerRadius(14.0)
            Spacer()
            Button(action:{
                // Acción a ejecutar al presionar
                self.num.detenerContador()
            }){
                // formato del botón
                HStack{
                    Text("Limpiar contador")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.red)
                .cornerRadius(14.0)
        }
    }
}

struct TerceraVista_Previews: PreviewProvider {
    static var previews: some View {
        TerceraVista()
    }
}
