//
//  Meter.swift
//  dummyApp (iOS)
//
//  Created by Joseph Tu on 11/12/22.
//

import SwiftUI

struct Meter: View {
    let colors = [Color("MeterColor1"), Color("MeterColor1")]
    
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.5)
                    .stroke(Color.black.opacity(0.1), lineWidth: 55)
                    .frame(width: 280, height: 280)
                
                Circle()
                    .trim(from: 0, to: 0.09)
                    .stroke(AngularGradient(gradient:.init(colors: self.colors), center: .center, angle: .init(degrees: 180)), lineWidth: 55)
                    .frame(width: 280, height: 280)
                
            }
            .rotationEffect(.init(degrees: 180))
            
            ZStack(alignment: .bottom) {
                
                self.colors[0]
                    .frame(width: 2, height: 95)
                
                Circle()
                    .fill(self.colors[0])
                    .frame(width: 15, height: 15)
            }
            .offset(y: -35)
            .rotationEffect(.init(degrees: -90))
            
        }
        .padding(.bottom, -120)
        .padding(.top, 40)
    }
    
}
