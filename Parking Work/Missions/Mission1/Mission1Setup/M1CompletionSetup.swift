//
//  M1CompletionSetup.swift
//  Parking Work
//
//  Created by Николай Ногин on 21.05.2023.
//

import SpriteKit

// Mission 1 Completion Rules Setup
extension Mission1 {
    
    func setupMissionCompletion() {
        let completionTargetSquare = self.childNode(withName: "completion-target")
        completionTargetSquare?.physicsBody = SKPhysicsBody(rectangleOf: (completionTargetSquare?.frame.size)!)
        completionTargetSquare?.physicsBody?.categoryBitMask = completionSquareCategory
        completionTargetSquare?.physicsBody?.contactTestBitMask = playerCategory | carCategory
        completionTargetSquare?.physicsBody?.affectedByGravity = false
        completionTargetSquare?.physicsBody?.pinned = true
        completionTargetSquare?.physicsBody?.isDynamic = false
    }
    
}

