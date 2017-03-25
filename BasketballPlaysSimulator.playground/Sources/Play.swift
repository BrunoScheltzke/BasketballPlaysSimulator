import Foundation

protocol Play {
    
    var name : String {get}
    var description : String {get}
    var team : Team {get set}
    
    func runPlay() -> Void
    func organizePlayers() -> Void
}
