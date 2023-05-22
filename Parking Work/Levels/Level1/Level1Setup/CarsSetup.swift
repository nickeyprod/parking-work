//
//  CarsSetup.swift
//  Parking Work
//
//  Created by Николай Ногин on 13.02.2023.
//

import SpriteKit

// Level 1 Cars Setup
extension Level1 {
    func setupCars() {
        
        oldCopper = Car(scene: self, name: CarNameList.OldCopper.rawValue, initialSpeed: 4, maxSpeedForward: 150, maxSpeedBackward: 60, turningSpeed: 0.006, accelerationRate: 1, secondaryAcceleration: 0.01, brakeRate: 1.5)
        chowerler = Car(scene: self, name: CarNameList.Chowerler.rawValue, initialSpeed: 10, maxSpeedForward: 200, maxSpeedBackward: 75, turningSpeed: 0.012, accelerationRate: 1, secondaryAcceleration: 0.01, brakeRate: 2)
        
        // Old Copper
        oldCopper!.node = childNode(withName: CAR_TEXTURE_NAMES.oldCopper) as? SKSpriteNode
        oldCopper!.node?.userData = NSMutableDictionary()
        oldCopper!.node?.userData?.setValue(oldCopper.self, forKeyPath: "self")
        oldCopper!.node?.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: CAR_TEXTURE_NAMES.oldCopper), size: CGSize(width: 460, height: 200))
        
        oldCopper!.node?.physicsBody?.categoryBitMask = carCategory
        oldCopper!.node?.physicsBody?.collisionBitMask = boundaryCategory | carCategory | trashBakCategory
        oldCopper!.node?.physicsBody?.affectedByGravity = false
        oldCopper!.node?.physicsBody?.isDynamic = true
        oldCopper!.node?.physicsBody?.angularDamping = 3.4 // between 0.0 and 1.0
        oldCopper!.node?.physicsBody?.linearDamping = 12.0 // between 0.0 and 1.0
        oldCopper!.node?.physicsBody?.restitution = 0.01 // between 0.0 and 1.0
        oldCopper!.node?.physicsBody?.contactTestBitMask = boundaryCategory | carCategory | trashBakCategory
        
        oldCopper!.node?.physicsBody?.mass = 896
        oldCopper!.node?.zPosition = 2
        oldCopper!.node?.anchorPoint = CGPoint(x: 0.47, y: 0.5)
        
        // old copper sounds
        oldCopper!.engineStarts = EngineSound.old_copper_engine_start.action
        oldCopper!.engineAccelerating = EngineSound.old_copper_acceleration.audio
        oldCopper!.engineDriving = EngineSound.old_copper_driving.audio
//        oldCopper!.node?.addChild(oldCopper!.engineAccelerating!)
//        oldCopper!.node?.addChild(oldCopper!.engineDriving!)
    
        // Chowerler
        chowerler!.node = childNode(withName: CAR_TEXTURE_NAMES.chowerler) as? SKSpriteNode
        chowerler!.node?.userData = NSMutableDictionary()
        chowerler!.node?.userData?.setValue(chowerler.self, forKeyPath: "self")
        chowerler!.node?.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: CAR_TEXTURE_NAMES.chowerler), size: CGSize(width: 440, height: 220))
        chowerler!.node?.physicsBody?.categoryBitMask = carCategory
        chowerler!.node?.physicsBody?.collisionBitMask = boundaryCategory | carCategory | trashBakCategory
        chowerler!.node?.physicsBody?.contactTestBitMask = boundaryCategory | carCategory | trashBakCategory
        chowerler!.node?.physicsBody?.affectedByGravity = false
        chowerler!.node?.physicsBody?.isDynamic = true
        
        chowerler!.node?.anchorPoint = CGPoint(x: 0.48, y: 0.495)
        chowerler!.node?.physicsBody?.angularDamping = 3.4
        chowerler!.node?.physicsBody?.linearDamping = 12.0
        chowerler!.node?.physicsBody?.restitution = 0.01
        
        
        chowerler!.node?.physicsBody?.mass = 1061
        chowerler!.node?.zPosition = 2
        
    }

}
