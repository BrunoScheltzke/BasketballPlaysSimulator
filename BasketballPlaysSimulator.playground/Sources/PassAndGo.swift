import Foundation

class PassAndGo : Play{
    
    var name = "Pass and Go"
    var description = "This is a simple play in which the pg would pass the ball to the small foward and set a screen to the shooting foward. As a result, the shooting foward would have space enough to receive a pass from the small foward and shot the basket."
    var team : Team
    
    init(team: Team) {
        self.team = team
    }
    
    func runPlay() -> Void{
        team.pointingGuard.passBallToPlayer(player: team.smallFoward)
        team.pointingGuard.setScreenToPlayer(player: team.shootingGuard);
        team.smallFoward.runTo(xyPosition: 20) //change this to 'position of a pointing guard'
        team.smallFoward.passBallToPlayer(player: team.shootingGuard)
        //team.shootingGuard.shot()
    }
    
    func organizePlayers() -> Void{
        team.pointingGuard.hasBall = true
    }


    
}
