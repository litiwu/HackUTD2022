//
//  AddStockView.swift
//  dummyApp (iOS)
//
//  Created by Joseph Tu on 11/13/22.
//

import SwiftUI

 

 

struct AddStockView: View {

    @State private var searchQuery: String = ""

    @State private var showSearchResult = false

    @State private var showSheet = false

    @State private var count = 0

    @Binding var newStock : String

    @Binding var newShareCount : Double

    @Binding var numStocks : Int

 

    

    var body: some View {

        VStack(){

        Text("Enter the Stock/ Bond You'd Like to Add: ")

                .font(.headline)

        TextField(

                    "Search",

                    text: $searchQuery

        )

         .textFieldStyle(.roundedBorder)

         .frame(width: 300)

         .onSubmit{

             showSearchResult = true

             

         }

            if(showSearchResult)

            {

                List{

                    CustomRowView(title: searchQuery , price: "60.00")

                        .onTapGesture {

                            showSheet.toggle()

                        }

                        .sheet(isPresented: $showSheet, content: {

                            VStack{

                            Text(searchQuery)

                                    .font(.system(size:60, weight:.bold))

                                    .padding(.top, 30)

                            

                            Text("How many shares/ bonds would you like to add: ")

                                    .font(.system(size:30))

                                    .padding(5)

                                    .multilineTextAlignment(.center)

                                    

                            HStack{

                                

                                Button(action: {

                                    print("-1")

                                    self.count -= 1;

                                }) {

                                    HStack {

                                        Text("-")

                                            .fontWeight(.semibold)

                                            .font(.title)

                                    }

                                    .padding(10)

                                    .foregroundColor(.white)

                                    .background(Color.pink)

                                    .cornerRadius(40)

                                }

                                

                                

                                Text("\(count)")

                                    .font(.system(size:30))

                                    .frame(width: 40, height: 40, alignment: .center)

                                     .background(Color.white)

                                     .clipShape(Rectangle())

                                    .padding(5)

                                

                                Button(action: {

                                    print("+1")

                                    self.count += 1;

                                }) {

                                    HStack {

                                        Text("+")

                                            .fontWeight(.semibold)

                                            .font(.title)

                                    }

                                    .padding(8)

                                    .foregroundColor(.white)

                                    .background(Color.green)

                                    .cornerRadius(40)

                                }

                            }

                            

                            Button(action: {

                                print("Enter")

                                numStocks += 1

                                newStock = searchQuery

                                newShareCount = Double(count)

                                showSheet.toggle()

                            }) {

                                HStack {

                                    Text("Add")

                                        .fontWeight(.semibold)

                                        .font(.title)

                                }

                                .padding(10)

                                .foregroundColor(.white)

                                .background(Color.green)

                                .cornerRadius(40)

                            }

                            

                            Spacer()

                            }

                        })

                }

            }

            Spacer()

        }.frame(alignment: .top)

    

        

        

        /*

        List{

            CustomRowView(title: "AOS" , price: "60.00")

            CustomRowView(title: "AAC", price: "18.43")

            CustomRowView(title: "AIR", price: "9.99")

            CustomRowView(title: "ABB", price: "44.92")

            CustomRowView(title: "AAN",price: "11.44")

        }

         */

    }

     

}

 

 

private struct CustomRowView: View {

  var title: String

  var price: String // change to double later

  

  var body: some View {

      

      HStack(){

    

        

        VStack(alignment: .leading) {

          

          Text(title)

                .font(.system(size:20, weight:.bold))

            

        

     

        }

        

          Text("    ")

        

            

          

        Spacer()

          

        Text(price)

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
