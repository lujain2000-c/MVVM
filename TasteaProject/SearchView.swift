//
//  SearchView.swift
//  TasteaProject
//
//  Created by لجين إبراهيم الكنهل on 03/11/1444 AH.
//

import SwiftUI

struct SearchView: View {
    @StateObject var  mv = ViewModelSearchPage()
    @State private var level: Double = 0
    var body: some View {
        
        ScrollView {
            ZStack{
                
                Color("Main")
                VStack(alignment: .leading){
                   Image(systemName: "arrow.backward")
                        .foregroundColor(.white)
                  
                        .padding(.bottom,30)
                    Text("Search reclpe")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    ZStack{
                        Rectangle()
                            .frame(width: 325 , height: 47)
                            .cornerRadius(16)
                            .opacity(0.2)
                            .foregroundColor(.white)
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .bold()
                            Text("Search here")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .bold()
                            Spacer()
                        }.padding(.leading,22)
                       
                    }.padding(.trailing,55 )
                    
                    
                    Text("Choose types of tea")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.vertical, 20)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(mv.allTypes){type in
                                
                                RoundedRectangle(cornerRadius: 50)
                                  //  .fill(type.color.opacity(0.2)
                                    .foregroundColor(type.color)
                                    .opacity(0.7)
                                    .frame(width: 150,height: 170)
                                    .overlay {
                                        VStack{
                                            Image(type.imageName)
                                                .resizable()
                                                .frame(width: 80, height: 80)
                                                .cornerRadius(40)
                                            
                                            Text(type.name)
                                                .foregroundColor(.white)
                                                .font(.callout)
                                                .bold()
                                        }
                              
                                    }
                                
                            }
                            
                            
                        }
                        
                    }
                    
                    Text("What dish are you making")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.vertical, 20)
                    
                    HStack(spacing: 40){
                        VStack{
                            Image("Drink2")
                            Text("Beveroge")
                                .foregroundColor(.white)
                                .font(.callout)
                                .bold()
                            
                        }
                        VStack{
                            Image("Drink3")
                            Text("Dessert")
                                .foregroundColor(.white)
                                .font(.callout)
                                .bold()
                            
                        }
                        VStack{
                            Image("Drink1")
                            Text("Juice")
                                .foregroundColor(.white)
                                .font(.callout)
                                .bold()
                            
                        }
                    }
                   
                    TeaView()
                    
                    ZStack{
                        Color.white
                        Button("See result"){
                           // mv.add()
                        }
                        .padding(.all, 12)
                        .foregroundColor(Color("Main"))
                    }.frame(width: 300, height: 50)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.vertical,40)
                        .bold()
                    
                    
                    
                    
                }.padding(.leading,45)
                    .padding(.top,70)
                
                
            }
            .ignoresSafeArea()
            
            
        }.ignoresSafeArea()
    
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
