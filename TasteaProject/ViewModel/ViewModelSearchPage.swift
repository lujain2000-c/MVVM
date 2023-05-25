//
//  ViewModelSearchPage.swift
//  TasteaProject
//
//  Created by لجين إبراهيم الكنهل on 04/11/1444 AH.
//

import SwiftUI

extension SearchView{
    @MainActor class ViewModelSearchPage: ObservableObject{
        @Published var allTypes: [TeaTypes] = [TeaTypes( imageName: "WhiteTea", name: "White tea", color: Color(.white)),TeaTypes( imageName: "GreenTea", name: "Green tea", color: Color("Color1")), TeaTypes( imageName: "BlackTea", name: "Black tea", color:Color("Color2")), TeaTypes( imageName: "Matcha", name: "Matcha", color: Color("Color3")), TeaTypes( imageName: "Oolong", name: "Oolong", color: Color("Color4"))]
//        var type1 = TeaTypes( imageName: "WhiteTea", name: "White tea", color: Color(.white))
//        var type2 = TeaTypes( imageName: "GreenTea", name: "Green tea", color: Color("Color1"))
//        var type3 = TeaTypes( imageName: "BlackTea", name: "Black tea", color:Color("Color2"))
//        var type4 = TeaTypes( imageName: "Matcha", name: "Matcha", color: Color("Color3"))
//        var type5 = TeaTypes( imageName: "Oolong", name: "Oolong", color: Color("Color4"))
//        func add(){
//            allTypes.insert(type1, at: 0)
//            allTypes.insert(type2, at: 1)
//            allTypes.insert(type3, at: 2)
//            allTypes.insert(type4, at: 3)
//            allTypes.insert(type5, at: 4)
//        }
    }
}




//var types = [type1,type2,type3,type4,type5]
