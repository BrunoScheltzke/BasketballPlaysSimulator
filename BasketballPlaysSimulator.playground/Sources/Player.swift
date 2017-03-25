import Foundation

public class Player{
    enum Position {
        case ShootingGuard, PointGuard, SmallFoward, PowerFoward, Center, Substitute
    }
    
    var name : String
    var position : Position
    var xyPosition : Int
    var playingAs: Position
    var hasBall: Bool
    
    
    
    init(name: String, position: Position, xyPosition: Int, pelayingAs: Position) {
        self.name = name
        self.position = position
        self.xyPosition = xyPosition
        self.playingAs = pelayingAs
        self.hasBall = false
    }
    
    func runTo(xyPosition: Int) -> Void {
        //add moveWithAnimationTo(xyPosition)
        self.xyPosition = xyPosition
    }
    
    func passBallToPlayer(player: Player) -> Void {
        self.hasBall = false
        player.hasBall = true
        //ball.moveTo(player.xyPosition)
    }
    
    func setScreenToPlayer(player: Player) -> Void {
        
    }
    
    func shot() -> Void {
        
    }
}
