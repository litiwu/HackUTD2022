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
    @State private var fadeInOut = false
    @State private var showDetails = false
    @State var choiceMade1 = "Options"
    @State var choiceMade2 = "Options"
    @State var choiceMade3 = "Options"
    
    var body: some View {
        
        
        TabView {

//            HomeScreenView()
//                .onAppear() {
//                    withAnimation(Animation.easeInOut(duration: 1.3)
//                        .repeatForever(autoreverses: true)) {
//                        fadeInOut.toggle()
//                    }
//                }.opacity(fadeInOut ? 0 : 1)
            
            VStack {
                HomeScreenView()
                Button("Let's get started!") {
                    withAnimation {
                        showDetails.toggle()
                    }
                }
                .padding()
                .background(Color(red: 81, green: 160, blue: 213))
                .clipShape(Capsule())

                if showDetails {
                    Text("How long do you plan to invest your money in this account?")
                    Menu {
                        Button(action: {choiceMade1 = "Less than 5 years"
                        }, label: {
                            Text("Less than 5 years")
                        })
                        Button(action: {choiceMade1 = "5-10 years"
                        }, label: {
                            Text("5-10 years")
                        })
                        Button(action: {choiceMade1 = "10-15 years"
                        }, label: {
                            Text("10-15 years")
                        })
                        Button(action: {choiceMade1 = "More than 15 years"
                        }, label: {
                            Text("More than 15 years")
                        })
                    } label: {
                        Label(
                            title: {Text("\(choiceMade1)") },
                            icon: {Image(systemName: "plus")})
                    }
                    
                    
                    Text("How much market loss are you able to afford in a given year?")
                    Menu {
                        Button(action: {choiceMade2 = "None (0%)"
                        }, label: {
                            Text("None (0%)")
                        })
                        Button(action: {choiceMade2 = "Minimal (-5% or less)"
                        }, label: {
                            Text("Minimal (-5% or less)")
                        })
                        Button(action: {choiceMade2 = "Limited (-10%)"
                        }, label: {
                            Text("Limited (-10%)")
                        })
                        Button(action: {choiceMade2 = "Moderate (-15%)"
                        }, label: {
                            Text("Moderate (-15%)")
                        })
                        Button(action: {choiceMade2 = "Considerable (-20%)"
                        }, label: {
                            Text("Considerable (-20%)")
                        })
                        Button(action: {choiceMade2 = "Substantial (-25% or more)"
                        }, label: {
                            Text("Substantial (-25% or more)")
                        })
                    } label: {
                        Label(
                            title: {Text("\(choiceMade2)") },
                            icon: {Image(systemName: "plus")})
                    }
                    
                    
                    
                    Text("If there was a major global downturn, how would you adjust your portfolio's risk?")
                    Menu {
                        Button(action: {choiceMade3 = "I'd significantly decrease the risk"
                        }, label: {
                            Text("I'd significantly decrease the risk")
                        })
                        Button(action: {choiceMade3 = "I'd moderately decrease the risk"
                        }, label: {
                            Text("I'd moderately decrease the risk")
                        })
                        Button(action: {choiceMade3 = "I'd keep my portfolio invested as is"
                        }, label: {
                            Text("I'd keep my portfolio invested as is")
                        })
                        Button(action: {choiceMade3 = "I'd moderately increase the risk"
                        }, label: {
                            Text("I'd moderately increase the risk")
                        })
                        Button(action: {choiceMade3 = "I'd significantly increase the risk"
                        }, label: {
                            Text("I'd significantly increase the risk")
                        })
                    
                    } label: {
                        Label(
                            title: {Text("\(choiceMade3)") },
                            icon: {Image(systemName: "plus")})
                    }
                }
            }.padding(30)
            
            
            .tabItem {
                Image(systemName: "1.circle.fill")
                Text("Home")
            }
            
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                

                VStack {
                    
                    Meter()
                        
                    
                    TestPage1(image: "stocklogo", title: "Market Risk", type: "Stocks").onTapGesture {
                        showSheet1.toggle()
                    }
                    .sheet(isPresented: $showSheet1, content: {
                        Text("Industry Trends")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .padding(.top, 20)
                        
                        ScrollView {
                            VStack(spacing: 10) {
                                // would reference these based on portfolio info and call article titles, source, and image from web
                                NewsCard(image: "Tesla", title: "Here's Who Owns Tesla Now That Elon Musk Is Selling Out", type: "Investor's Business Daily")
                                NewsCard(image: "NVIDIA", title: "NVDA: NVIDIA Corp - Stock Price, Quote and News - CNBC", type: "CNBC")
                                NewsCard(image: "apple", title: "Latest on the iPhone, iPad, Macbook, Apple TV ... - NBC News", type: "NBC")
                                NewsCard(image: "TSMC", title: "TSM - Taiwan Semiconductor Manufacturing Company Limited", type: "YahooFinance")
                                NewsCard(image: "COST", title: "COST | Costco Wholesale Corp. Stock Price & News - WSJ", type: "WSJ")
                            }
                        }

                        .frame(maxWidth: .infinity)
                        
                    })
                        
                    TestPage1(image: "bondslogo", title: "Interest Rate Risk", type: "Bonds").onTapGesture {
                        showSheet2.toggle()
                    }
                    .sheet(isPresented: $showSheet2, content: {
                        Text("Industry Trends")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .padding(.top, 20)
                        
                        ScrollView {
                            VStack(spacing: 10) {
                                // would reference these based on portfolio info and call article titles, source, and image from web
                                NewsCard(image: "Tesla", title: "Here's Who Owns Tesla Now That Elon Musk Is Selling Out", type: "Investor's Business Daily")
                                NewsCard(image: "NVIDIA", title: "NVDA: NVIDIA Corp - Stock Price, Quote and News - CNBC", type: "CNBC")
                                NewsCard(image: "apple", title: "Latest on the iPhone, iPad, Macbook, Apple TV ... - NBC News", type: "NBC")
                                NewsCard(image: "TSMC", title: "TSM - Taiwan Semiconductor Manufacturing Company Limited", type: "YahooFinance")
                                NewsCard(image: "COST", title: "COST | Costco Wholesale Corp. Stock Price & News - WSJ", type: "WSJ")
                            }
                        }

                        .frame(maxWidth: .infinity)
                    })
                    
                    TestPage1(image: "industry", title: "Business Risk", type: "Industry").onTapGesture {
                        showSheet3.toggle()
                    }
                    .sheet(isPresented: $showSheet3, content: {
                        Text("Industry Trends")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .padding(.top, 20)
                        
                        ScrollView {
                            VStack(spacing: 10) {
                                // would reference these based on portfolio info and call article titles, source, and image from web
                                NewsCard(image: "Tesla", title: "Here's Who Owns Tesla Now That Elon Musk Is Selling Out", type: "Investor's Business Daily")
                                NewsCard(image: "NVIDIA", title: "NVDA: NVIDIA Corp - Stock Price, Quote and News - CNBC", type: "CNBC")
                                NewsCard(image: "apple", title: "Latest on the iPhone, iPad, Macbook, Apple TV ... - NBC News", type: "NBC")
                                NewsCard(image: "TSMC", title: "TSM - Taiwan Semiconductor Manufacturing Company Limited", type: "YahooFinance")
                                NewsCard(image: "COST", title: "COST | Costco Wholesale Corp. Stock Price & News - WSJ", type: "WSJ")
                            }
                        }

                        .frame(maxWidth: .infinity)
                    })
                }
                
            }
            
                .tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("Dashboard")
                }
            ProfileView(newStock: "", newShareCount: 0.0, numStocks: 5)
                .tabItem {
                    Image(systemName: "3.circle.fill")
                    Text("Portfolio")

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
