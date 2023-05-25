//
//  TeaView.swift
//  TasteaProject
//
//  Created by لجين إبراهيم الكنهل on 03/11/1444 AH.
//

import SwiftUI

struct TeaView: View {
    @State private var level: Double = 0
    var body: some View {
        Text("Difficulty level")
            .font(.title2)
            .bold()
            .foregroundColor(.white)
            .padding(.vertical, 18)
        
        HStack(spacing: 73){
            Text("Easy")
                .foregroundColor(.white)
                .font(.callout)
                .bold()
            
            Text("Modium")
                .foregroundColor(.white)
                .font(.callout)
                .bold()
            
            Text("Advanced")
                .foregroundColor(.white)
                .font(.callout)
                .bold()
        }.padding(.trailing,40)
            .padding(10)
        Slider(value:  $level, in: 1...10)
            .foregroundColor(.white)
            .padding(.trailing,40)
    }
}

struct TeaView_Previews: PreviewProvider {
    static var previews: some View {
        TeaView()
    }
}
