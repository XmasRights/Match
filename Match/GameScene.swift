//
//  GameScene.swift
//  Match
//
//  Created by Chris Home on 22/11/2015.
//  Copyright (c) 2015 Christmas House. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView)
    {
        print(self.size)
        
        let y    = self.size.height / CGFloat(2)
        let cols = CGFloat(6)
        
        for (var i = CGFloat(1); i < cols + 1; i++)
        {
            let x    = i * self.size.width / (cols + 1)
            let card = CardFactory.createCard(CardType.BlankCard)
            card.position = CGPointMake(x, y)
            addChild(card)
        }
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
