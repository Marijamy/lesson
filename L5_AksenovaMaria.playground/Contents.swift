import UIKit

enum DriveStatus: CustomStringConvertible{
    case on, off
    
    var description: String{
        switch self {
        case .on:
            return "Двигатель заведен"
        case .off:
            return "Двигатель заглушен"
        }
    }
}

enum WindowStatus: CustomStringConvertible{
    
    case open, close
    
    var description: String{
        switch self {
        case .open:
            return "Окна открыты"
        case .close:
            return "Окна закрыты"
        }
    }
}

protocol CarProtocol{
    var model: String {get}
    var yearOfRelease: Int {get}
    var engineVolume: Int {get}
    var drive: DriveStatus {get set}
    var windows: WindowStatus {get set}
    
    func discription ()
}

extension CarProtocol{
    mutating func switchDrive(action: WindowStatus){
        switch drive {
        case .on:
            self.drive = .on
        case .off:
            self.drive = .off
        }
}

class SportCar: CarProtocol{
    
    var model: String
    var yearOfRelease: Int
    var engineVolume: Int
    var drive: DriveStatus
    var windows: WindowStatus
    var mileage: Int
    
    init(model: String, yearOfRelease: Int, engineVolume: Int, drive: DriveStatus, windows: WindowStatus, mileage: Int) {
        self.model = model
        self.yearOfRelease = yearOfRelease
        self.engineVolume = engineVolume
        self.drive = drive
        self.windows = windows
        self.mileage = mileage
    }
    
    
    func discription (){
        print("Модель \(model) \(yearOfRelease) года выпуска. В данный момент двигатель \(drive), окна \(windows), пробег \(mileage) километров.")
    }
    
    /*func perfom(action: Action){
        switch action {
        case .switchDrive(let status):
            self.drive = status
        case .switchWindows(let status):
            self.windows = status
        }
    }*/
}



var opelCar = SportCar(model: "Opel", yearOfRelease: 2020, engineVolume: 6, drive: .off, windows: .close, mileage: 1000)
    opelCar;.discription
opelCar.perfom(action: .switchDrive(.on))
opelCar.discription()



    /*enum Direction: String{
        case Open = "Open"
        case Close = "Close"
        case On = "On"
        case Off = "Off"
        case Full = "Full"
        case Empty = "Empty"
    }

    protocol CarProtocol{
        var model: String {get}
        var yearOfRelease: Int {get}
        var engineVolume: Int {get}
        var drive: DriveStatus {get set}
        var windows: WindowStatus {get set}
        
        func discription ()
    }

 extension CarProtocol{
     
     func driveStatus(_ direction: Direction){
         switch drive {
         case .On:
             self.drive == .Off
             print("Введите корректное значение для данного параметра.")
         case .Off:
             self.windows == .On
         default:
             print("Внимание! Двигатель запущен!")
         }
     }
 }

 class SportCar: CarProtocol{
     
     var model: String
     var yearOfRelease: Int
     var engineVolume: Int
     var drive: DriveStatus
     var windows: WindowStatus
     var mileage: Int
     
     init(model: String, yearOfRelease: Int, engineVolume: Int, drive: DriveStatus, windows: WindowStatus, mileage: Int) {
         self.model = model
         self.yearOfRelease = yearOfRelease
         self.engineVolume = engineVolume
         self.drive = drive
         self.windows = windows
         self.mileage = mileage
     }
     
     
     func discription (){
         print("Модель \(model) \(yearOfRelease) года выпуска. В данный момент двигатель \(drive), окна \(windows), пробег \(mileage) километров.")
     }
 }

 class TrunkCar : Car {
     var trailer: Bool
     var trailerVolume: Int
     var trailerFull: Direction
     
     func treilerIsFull() {
         self.trailerFull = .Full
     }
     
     init(model: String, yearOfRelease: Int, trunkVolume: Int, drive: Direction, windows: Direction, trunkFull: Direction, trailer: Bool, trailerFull: Direction, trailerVolume: Int) {
         self.trailer = trailer
         self.trailerVolume = trailerVolume
         self.trailerFull = trailerFull
         super.init (model: model, yearOfRelease: yearOfRelease, trunkVolume: trunkVolume, drive: drive, windows: windows, trunkFull: trunkFull)
     }
     
     func trailerDetach() {
         self.trailer = false
     }
     
     override func discription() {
         print("Модель \(model) \(yearOfRelease) года выпуска. Объем багажника \(trunkVolume) литров. Прицеп в данной комплектации \(trailer). В данный момент двигатель \(drive), окна \(windows), багажник \(trunkFull).")
     }
 }
}*/
