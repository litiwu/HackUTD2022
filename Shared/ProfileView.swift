//
//  ProfileView.swift
//  dummyApp (iOS)
//
//  Created by Joseph Tu on 11/13/22.
//

import SwiftUI

 

 

struct ProfileView: View {

    

    @State var newStock : String

    @State var newShareCount : Double

    @State var numStocks = 5

 

    

    var body: some View {

        var stockNames = ["TSLA", "NVDA","AAPL", "TSM", "COST"]

        var shareCount = [2.0,3.0,1.0,4.0,5.0]

        var lastPrices = ["195.70", "163.12", "149.43", "75.50","35.81", "67.81"]

      

        

        

        NavigationView{

        

        VStack{

 

            

            HStack(){

                Text("Hello, Lisa")

                    .frame(maxWidth: .infinity, alignment: .leading)

                   // .padding(.top, 15)

                    .padding(.leading, 12)

                    .font(.system(size:38, weight:.bold))

                

                

                NavigationLink(destination: AddStockView(newStock: $newStock, newShareCount: $newShareCount, numStocks: $numStocks)){

                        Button("+", action: { print("go into add") })

                            .buttonStyle(MyButtonStyle())

                            .font(.system(size:28, weight: .bold))

                            .frame(maxWidth: .infinity, alignment: .trailing)

                            .padding(.trailing, 30)

                            .padding(.top, 15)

                    }

             

               }

            

        ScrollView{

            VStack(){

                Text("Stocks")

                    .padding(.top, 5)

                    .font(.system(size:24, weight:.bold))

                    

               /* if addNow

                {

                    stockNames.append(newStock)

                    shareCount.append(newShareCount)

                }*/

                

                List{

                    ForEach(0..<numStocks) { i in

                        CustomRowView(title: stockNames[i], numShares: shareCount[i], lastPrice: lastPrices[i])

                    }

                    /*

                    CustomRowView(title: "TSLA", numShares: "2.00", lastPrice: "195.70")

                    CustomRowView(title: "NVDA", numShares: "1.00", lastPrice: "163.12")

                    CustomRowView(title: "AAPL", numShares: "5.00", lastPrice: "149.43")

                    CustomRowView(title: "TSM", numShares: "3.00", lastPrice: "75.50")

                    CustomRowView(title: "COST", numShares: "2.00", lastPrice: "35.81")

                     */

                }

            }

            .frame(

                minHeight:410,

                maxHeight:410,

                alignment: .topLeading

            )

            

            VStack(alignment: .center){

                

                Text("Bonds")

                   // .padding(.top, 10)

                    .font(.system(size:24, weight:.bold))

                        

                List{

                    TreasureBond(title: "Ten Year Treasury Bonds", numShares: "16", yieldPercentage: "3.82")

 

                    }

            

            }

            .frame(

                minHeight:420,

                maxHeight:420,

                alignment: .topLeading

            )

    

        }

        }

        }

    }

            }

 

    

 

private struct CustomRowView: View {

  var title: String

  var numShares: Double // change to double later

  var lastPrice: String // change to double later

  

  var body: some View {

      

      HStack(){

    

        

        VStack(alignment: .leading) {

          

            

          Text(title)

                .font(.system(size:20, weight:.bold))

            

          var convertedNumShares = String(numShares)

            

          Text(convertedNumShares + " Shares")

            .font(.system(size:12))

        

     

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

            

          Text(numShares + " Bonds")

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

        Circle()

            .fill(Color.green)

            .frame(width: 95, height: 40)

            .opacity(0.3)

    }

 

    func makeBody(configuration: Configuration) -> some View {

        configuration.label

            .background(background)

            .scaleEffect(configuration.isPressed ? 0.95 : 1)

    }

}
