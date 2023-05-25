//
//  ContentView.swift
//  Cart(MVVM)
//
//  Created by لجين إبراهيم الكنهل on 05/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  mv = CartViewModel()
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "arrow.backward")
                    .bold()
                Spacer()
                Text("My Cart")
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing,100)
            }
//            Image("Pizza")
//                .resizable()
//                .cornerRadius(200)
//            HStack{
//                Text("Add Toppings")
//                    .padding(.trailing, 200)
//                    .bold()
//                Spacer()
//
//                Button("Show"){
//                    mv.showToppings()
//                }
//            }
         //   mv.myCart()
            List(mv.allItems){item in
              //  mv.myCart()
                HStack{
                    Image(item.imageName)
                        .resizable()
                        .frame(width: 70, height: 70
                        )
                    VStack{
                        Text(item.name)
                        Text(item.price)
                    }
                    Spacer()
                    HStack{
                        Button("-"){
                            mv.add()
                        }
                        Button("+"){
                            mv.delete()
                        }
                       // Text(mv.count)
                    }
                }
                
            }.scrollContentBackground(.hidden)
            
            Button("Cart"){
                mv.myCart()
            }.bold()
                .foregroundColor(.black)
                .font(.subheadline)
                .padding(.horizontal,150)
                .padding(.vertical,5)
                .background(.yellow)
                .cornerRadius(20)
                //.frame(width: 200, height: 50)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
