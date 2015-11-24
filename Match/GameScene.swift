//
//  GameScene.swift
//  Match
//
//  Created by Chris Home on 22/11/2015.
//  Copyright (c) 2015 Christmas House. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    private var grid: CardGrid?
    private let margin = CGFloat(20)
    
    override func didMoveToView(view: SKView)
    {
        applyGrid()
        grid?.createGrid(20, 20)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    private func applyGrid()
    {
        let shrunkFrame = CGRectInset(self.frame, margin, margin)
        self.grid = CardGrid(size: shrunkFrame.size)
        self.grid!.position = shrunkFrame.getCentre()
        addChild(self.grid!);
    }
}
