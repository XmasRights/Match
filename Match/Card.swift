//
//  Card.swift
//  Match
//
//  Created by Chris Home on 22/11/2015.
//  Copyright © 2015 Christmas House. All rights reserved.
//

import SpriteKit

class Card: SKSpriteNode
{
    required init(coder aDecoder: NSCoder)
    {
        fatalError("NSCoding not supported")
    }
    
    init(imageNamed: String) {
        let cardTexture = SKTexture(imageNamed: imageNamed)
        super.init(texture: cardTexture, color: UIColor.clearColor(), size: cardTexture.size())
    }
}
