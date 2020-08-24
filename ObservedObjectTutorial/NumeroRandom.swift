//
//  NumeroRandom.swift
//  ObservedObjectTutorial
//
//  Created by Ingeniero Fernando on 23/08/20.
//  Copyright © 2020 Ingeniero Fernando. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NumeroRandom: ObservableObject{
    @Published var numero: Int = 0
    @Published var contador:Int = 1
    var timer = Timer()
    init(){
        iniciar()
    }
    
    
    func iniciar(){
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ (timer) in
            
            self.numero = Int.random(in: 0 ..< 10)
            
        }
    }
    
    func detener(){
        self.timer.invalidate()
    }
    
    func detenerContador(){
        self.contador = 0;
    }
}
