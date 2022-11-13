//
//  NewsCard.swift
//  dummyApp (iOS)
//
//  Created by Joseph Tu on 11/13/22.
//

import SwiftUI

struct CardModifierNews: ViewModifier {
    func body(content: Content) -> some View {
            content
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
}

struct NewsCard: View {
    
    var image: String
    var title: String
    var type: String
    //var price: Double
    
    var body: some View {
        HStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 50)
                .padding(.all, 20)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text(type)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                
            }.padding(.trailing, 20)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifierNews())
        .padding(.all, 10)
        .padding(.bottom, -10)
    }
}

