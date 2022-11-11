//
//  Icon.swift
//  dummyApp
//
//  Created by Lisa Wu on 11/11/22.
//

import SwiftUI

struct Icon: View {
    var body: some View {
        Image("anya")
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon()
    }
}
