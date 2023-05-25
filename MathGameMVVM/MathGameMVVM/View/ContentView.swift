//
//  ContentView.swift
//  MathGameMVVM
//
//  Created by لجين إبراهيم الكنهل on 04/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  mv = GameViewModel()
    var body: some View {
        VStack {
            ForEach(mv.allAnswer){answer in
                
                Text("\(answer.firstNumber ) + \(answer.secondNumber )")
                    .font(.largeTitle)
                    .bold()
            }
           
            HStack{
                Circle()
                    .frame(width: 130,height: 150)
                    .foregroundColor(.blue)
                    .overlay(){
                        Text("30")
                            .font(.title)
                            .bold()
                        
               
                            }
                
                Circle()
                            .frame(width: 130,height: 150)
                            .foregroundColor(.blue)
                            .overlay(){
                                Text("80")
                                    .font(.title)
                                    .bold()
                            }
                    }
            HStack{
                Circle()
                    .frame(width: 130,height: 150)
                    .foregroundColor(.blue)
                    .overlay(){
                        Text("90")
                            .font(.title)
                            .bold()
                        
               
                            }
                
                Circle()
                            .frame(width: 130,height: 150)
                            .foregroundColor(.blue)
                            .overlay(){
                                Text("23")
                                    .font(.title)
                                    .bold()
                            }
                
                    }
            Button("start"){
                mv.Game()
            }
            .bold()
            .font(.title)
            }//.onAppear(perform: generateAnswes)
            .padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
