//
//  ContentView.swift
//  Pizza(MVVM)
//
//  Created by لجين إبراهيم الكنهل on 04/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  mv = PizzaViewModel()
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "arrow.backward")
                    .bold()
                Spacer()
                Text("Pepperoni")
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing,100)
            }
            Image("Pizza")
                .resizable()
                .cornerRadius(200)
            HStack{
                Text("Add Toppings")
                    .padding(.trailing, 200)
                    .bold()
                Spacer()
                
                Button("Show"){
                    mv.showToppings()
                }
            }
            List(mv.allToppings){topping in
                HStack{
                    Image(systemName: "square")
                    Text(topping.toppings)
                    Text(topping.toppingPrice)
                }
                
            }.scrollContentBackground(.hidden)
            
            Button("ADD ITEM"){
                
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
