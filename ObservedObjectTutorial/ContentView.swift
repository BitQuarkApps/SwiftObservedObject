//
//  ContentView.swift
//  ObservedObjectTutorial
//
//  Created by Ingeniero Fernando on 23/08/20.
//  Copyright © 2020 Ingeniero Fernando. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    @ObservedObject var randomNumber = NumeroRandom()
    @EnvironmentObject var randomNumber: NumeroRandom
    var valor = 3
    @State private var nombre = "Jorge"
    var body: some View {
        VStack {
            TextField("Escribe algo", text: self.$nombre)
            Spacer()
            Text("\(self.randomNumber.numero)")
                .font(.title)
                .bold()
            if self.randomNumber.numero == self.valor{
                Text("Es tres!")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.green)
            }else{
                Text("No es tres!")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.red)
            }
            Button(action:{
                // Acción a ejecutar al presionar
                self.randomNumber.detener()
            }){
                // formato del botón
                HStack{
                    Image(systemName: "stop.fill")
                        .foregroundColor(.white)
                    Text("Detener")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.red)
                .cornerRadius(14.0)
            Button(action:{
                // Acción a ejecutar al presionar
                self.randomNumber.iniciar()
            }){
                // formato del botón
                HStack{
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                    Text("Iniciar")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.green)
                .cornerRadius(14.0)
            Spacer()
            Button(action:{
                // Acción a ejecutar al presionar
                self.randomNumber.contador += 1
            }){
                // formato del botón
                HStack{
                    Text("Contador = \(self.randomNumber.contador)")
                        .foregroundColor(.white)
                        .font(.headline)
                }.padding(.all)
            }.background(Color.black)
                .cornerRadius(14.0)
            SegundaVista()
            TerceraVista()
        }// Fin Stack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
