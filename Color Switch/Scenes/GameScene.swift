//
//  GameScene.swift
//  Color Switch
//
//  Created by Abhishek Rawat on 07/03/20.
//  Copyright © 2020 Abhishek Rawat. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var colorSwitch : SKSpriteNode!
    
    override func didMove(to view: SKView) {
        layoutScene()
    }
    
    func layoutScene() {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue : 80/255, alpha : 1.0)
        colorSwitch = SKSpriteNode(imageNamed: "ColorCircle")
        colorSwitch.size = CGSize(width: frame.size.width / 3, height: frame.size.width / 3)
        colorSwitch.position = CGPoint(x: frame.midX, y: frame.minY + colorSwitch.size.height)
        colorSwitch.physicsBody = SKPhysicsBody(circleOfRadius: colorSwitch.size.width / 2)
        colorSwitch.physicsBody?.categoryBitMask = PhysicsCategories.switchCategory
        addChild(colorSwitch)
        spawnBall()
    }
    
    func spawnBall() {
        let ball = SKSpriteNode(imageNamed: "ball")
        ball.size = CGSize(width: 30, height: 30)
        ball.position = CGPoint(x: frame.midX, y: frame.maxY)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2)
        ball.physicsBody?.categoryBitMask = PhysicsCategories.ballCategory
        addChild(ball)
    }
}
