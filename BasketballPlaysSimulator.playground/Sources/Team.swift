import Foundation

public class Team{
    var name: String
    var shootingGuard: Player
    var pointingGuard: Player
    var smallFoward: Player
    var powerFoward: Player
    var center: Player
    var substitutes: [Player]
    
    
    init(name: String, sg: Player, pg: Player, sf: Player, pf: Player, center: Player, substitutes: [Player]) {
        self.name = name
        shootingGuard = sg
        pointingGuard = pg
        smallFoward = sf
        powerFoward = pf
        self.center = center
        self.substitutes = substitutes
    }
    
    
    
    func substitutePlayer(toSubstitute: Player, toBeSubstituted: Player) -> Void {
        if(!(toSubstitute.playingAs == .Substitute && toBeSubstituted.playingAs == .Substitute)){
            for index in 0..<substitutes.count {
                if(toSubstitute === substitutes[index]){
                    substitutes.remove(at: index)
                }
                if(toBeSubstituted === substitutes[index]){
                    substitutes.remove(at: index)
                }
            }
            
            let tempPlayer = toSubstitute
            
            toSubstitute.runTo(xyPosition: toBeSubstituted.xyPosition)
            toBeSubstituted.runTo(xyPosition: toSubstitute.xyPosition)
            switch toBeSubstituted.playingAs {
            case .ShootingGuard:
                toSubstitute.playingAs = .ShootingGuard
                shootingGuard = toSubstitute
                break
                
            case .PointGuard:
                toSubstitute.playingAs = .PointGuard
                pointingGuard = toSubstitute
                break
                
            case .SmallFoward:
                toSubstitute.playingAs = .SmallFoward
                smallFoward = toSubstitute
                break
                
            case .PowerFoward:
                toSubstitute.playingAs = .PowerFoward
                powerFoward = toSubstitute
                break
                
            case .Center:
                toSubstitute.playingAs = .Center
                center = toSubstitute
                break
                
            case .Substitute:
                if(toSubstitute.playingAs != .Substitute){
                    toSubstitute.playingAs = .Substitute
                    substitutes.append(toSubstitute)
                }
                break
                
            default:
                break
            }
            
            switch tempPlayer.playingAs {
            case .ShootingGuard:
                toBeSubstituted.playingAs = .ShootingGuard
                shootingGuard = toBeSubstituted
                break
                
            case .PointGuard:
                toBeSubstituted.playingAs = .PointGuard
                pointingGuard = toBeSubstituted
                break
                
            case .SmallFoward:
                toBeSubstituted.playingAs = .SmallFoward
                smallFoward = toBeSubstituted
                break
                
            case .PowerFoward:
                toBeSubstituted.playingAs = .PowerFoward
                powerFoward = toBeSubstituted
                break
                
            case .Center:
                toBeSubstituted.playingAs = .Center
                center = toBeSubstituted
                break
                
            case .Substitute:
                if(toBeSubstituted.playingAs != .Substitute){
                    toBeSubstituted.playingAs = .Substitute
                    substitutes.append(toBeSubstituted)
                }
                break
                
            default:
                break
            }
            
        //end of initial if statement
        }else{
            toSubstitute.runTo(xyPosition: toBeSubstituted.xyPosition)
            toBeSubstituted.runTo(xyPosition: toSubstitute.xyPosition)
        }
    }
}
