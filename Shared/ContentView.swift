//
//  ContentView.swift
//  Shared
//
//  Created by Lisa Wu on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Icon()
                .offset(y: -130)
                .padding(.bottom, -130)
            
        VStack(alignment: .leading) {
            Text("Hack Degens")
                .font(.title)
            HStack {
                Text("idk what we making")
                    .font(.subheadline)
                Spacer()
                Text("2022")
                    .font(.subheadline)
            }
        }
        .padding()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
