

import Foundation
extension ContentView{
    @MainActor class  CartViewModel: ObservableObject{
        @Published var allItems: [CartModel] = []
        @Published var count: Int = 0
        
       var item1 = CartModel(name: "Iphon14", price: "40000 RS", imageName: "Iphone14")
        var item2 = CartModel(name: "Ipad", price: "3000 RS", imageName: "Ipad")
        func myCart(){
        
                allItems.insert(item1, at: 0)
                allItems.insert(item2, at: 1)
            
           
           }
        func add(){
            count += 1
        }
        
        func delete(){
            count -= 1
        }
        
    }
}
