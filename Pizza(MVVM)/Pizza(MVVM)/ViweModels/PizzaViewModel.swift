
import Foundation
extension ContentView{
    @MainActor class  PizzaViewModel: ObservableObject{
        @Published var allToppings: [PizzaModel] = []
        @Published var isShow: Bool = false
        
       var topping1 = PizzaModel(toppings: "Pepperoni", toppingPrice: "3 RS")
        var topping2 = PizzaModel(toppings: "Susage", toppingPrice: "2 RS")
        var topping3 = PizzaModel(toppings: "Doubel Susage", toppingPrice: "4 RS")
        var topping4 = PizzaModel(toppings: "Chicken", toppingPrice: "3 RS")
        var topping5 = PizzaModel(toppings: "jalapenos", toppingPrice: "3 RS")
        var topping6 = PizzaModel(toppings: "Mushrooms", toppingPrice: "2 RS")
  
        func showToppings(){
            if isShow == false{
                allToppings.insert(topping1, at: 0)
                allToppings.insert(topping2, at: 1)
                allToppings.insert(topping3, at: 2)
                allToppings.insert(topping4, at: 3)
                allToppings.insert(topping5, at: 4)
                allToppings.insert(topping6, at: 5)
                isShow = true
            }else{
                isShow = false
                allToppings.removeAll()
            }
        }
    }
}
