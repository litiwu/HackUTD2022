//
//  ContentView.swift
//  Shared
//
//  Created by Lisa Wu on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet1 = false
    @State private var showSheet2 = false
    @State private var showSheet3 = false
    
    var body: some View {
        TabView {
            
            HomeScreenView()
            .tabItem {
                Image(systemName: "1.circle.fill")
            }
            
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                

                VStack {
                    
                    Meter()
                    
                    TestPage1(image: "anya", title: "Market Risk", type: "Stocks").onTapGesture {
                        showSheet1.toggle()
                    }
                    .sheet(isPresented: $showSheet1, content: {
                        Text("Industry Trends")
                            .padding(.top, -100)
                        
                        ScrollView {
                            VStack(spacing: 20) {
                                ForEach(0..<10) {
                                    Text("Item \($0)")
                                        .foregroundColor(.white)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 300)
                                        .padding(.all, 20)
                                        .background(.green)
                                }
                            }
                        }
                        .padding(.top, -70)
                        .frame(width: 300, height: 500)
                        
                    })
                        
                    TestPage1(image: "anya", title: "Interest Rate Risk", type: "Bonds").onTapGesture {
                        showSheet2.toggle()
                    }
                    .sheet(isPresented: $showSheet2, content: {
                        Text("hello WESLEY")
                    })
                    
                    TestPage1(image: "anya", title: "Industry Risk", type: "Industry").onTapGesture {
                        showSheet3.toggle()
                    }
                    .sheet(isPresented: $showSheet3, content: {
                        Text("hello YONGGOD")
                    })
                }
                
            }
            
                .tabItem {
                    Image(systemName: "2.circle.fill")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "3.square.fill")

                }

        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
