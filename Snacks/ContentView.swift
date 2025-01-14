//
//  ContentView.swift
//  Snacks
//
//  Created by Tuna Boşdurmaz on 14.01.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                Home()
                    .environmentObject(cartManager)
                
                if cartManager.products.count > 0 {
                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
                        HStack(spacing: 30) {
                            Text("\(cartManager.products.count)")
                                .padding()
                                .background(.yellow)
                                .clipShape(Circle())
                                .foregroundColor(.black)
                            
                            VStack(alignment: .leading) {
                                Text("Cart")
                                    .font(.system(size: 26, weight: .semibold))
                                
                                Text("\(cartManager.products.count) Item")
                                    .font(.system(size: 18))
                            }
                            Spacer()
                            ForEach(cartManager.products, id: \.name) {item in
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 60, height: 60)
                                    .background(.white)
                                    .clipShape(Circle())
                                    .padding(.leading, -60)
                            }
                        }
                        .padding(30)
                        .frame(width: .infinity, height: 100)
                        .background(.black)
                        .foregroundColor(.white)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
