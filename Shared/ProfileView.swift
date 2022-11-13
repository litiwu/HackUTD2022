//
//  ProfileView.swift
//  dummyApp (iOS)
//
//  Created by Joseph Tu on 11/13/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {

        VStack{
                Button("Add", action: { print("go into add") })

                    .buttonStyle(MyButtonStyle())

            VStack(){

                Text("Stonks")

                    .padding()

                    .font(.system(size:24, weight:.bold))

                List{
                    CustomRowView(title: "TSLA", numShares: "2.00", lastPrice: "195.70")
                    CustomRowView(title: "NVDA", numShares: "1.00", lastPrice: "163.12")
                    CustomRowView(title: "AAPL", numShares: "5.00", lastPrice: "149.43")
                    CustomRowView(title: "TSM", numShares: "3.00", lastPrice: "75.50")
                    CustomRowView(title: "COST", numShares: "2.00", lastPrice: "35.81")
                }

            }

            .frame(
                minHeight:450,
                maxHeight:450,
                alignment: .topLeading
            )

            VStack{
            Text("Bonks")
                    .font(.system(size:24, weight:.bold))
           List{

                    TreasureBond(title: "General Bonds", numShares: "16.00", yieldPercentage: "31")
                }
            }
        }
    }
}

private struct CustomRowView: View {
  var title: String
  var numShares: String // change to double later
  var lastPrice: String // change to double later
  var body: some View {
      HStack(){
        VStack(alignment: .leading) {
          Text(title)
                .font(.system(size:22, weight:.bold))
          Text(numShares + " Shares")
            .font(.system(size:16))
        }
          Text("    ")
        Image("stockLine1")
            .resizable()
            .frame(width: 100, height: 50)
        Spacer()
        Text("$" + lastPrice)
            .frame(width: 95, height: 40)
            .background(RoundedRectangle(cornerRadius: 6).fill(Color.green).padding(2))
  }
  }
}

private struct TreasureBond: View {
  var title: String
  var numShares: String // change to double later
  var yieldPercentage: String // change to double later
  var body: some View {
      HStack(){
        VStack(alignment: .leading) {
          Text(title)
            .font(.system(size:22, weight:.bold))
          Text(numShares + " Shares")
            .font(.system(size:16))
        }
          Text("    ")
          
        Spacer()
          
        Text(yieldPercentage + "%")

            .frame(width: 95, height: 40)

            .background(RoundedRectangle(cornerRadius: 6).fill(Color.green).padding(2))
  }
  }
}


struct MyButtonStyle: ButtonStyle {
    var background: some View {
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color.green)
            .frame(width: 95, height: 40)
            .opacity(0.3)
            .padding(.top, 50)
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(background)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}
