import Foundation


class Car{
    var model: String
    var year: Int
    var maxSpeed: Int
    var power : Int
    var accelerationTime: Double

    init(model: String, year: Int, maxSpeed: Int, power: Int, accelerationTime: Double) {
        self.model = model
        self.year = year
        self.maxSpeed = maxSpeed
        self.power = power
        self.accelerationTime = accelerationTime
    }

    func getTuning(){
        let randomNumber = Int.random(in: 1...3)
        if randomNumber == 2{
            let newSpeed = maxSpeed + Int.random(in: 10...100)
            let newPower = power + Int.random(in: 10...100)
            let newAcceleration = accelerationTime - Double.random(in: 0.1...0.9)
            print("Модель машины: \(model) \nГод: \(year) \nМакс. скорость: \(newSpeed) \nМощность: \(newPower) \nВремя разгона: \(newAcceleration)")
        }else{
            print("Тюнинг не удался")
        }
    }
}

var car: Car = Car(model: "BMW X6", year: 2015, maxSpeed: 236, power: 245, accelerationTime: 7.5)

car.getTuning()
