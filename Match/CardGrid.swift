//
//  CardGrid.swift
//  Match
//
//  Created by Chris Home on 23/11/2015.
//  Copyright © 2015 Christmas House. All rights reserved.
//

import SpriteKit

class CardGrid: SKSpriteNode
{
    private var rows = 1
    private var cols = 1
    
    required init(coder aDecoder: NSCoder)
    {
        fatalError("NSCoding not supported")
    }
    
    init(size: CGSize)
    {
        super.init(texture: nil, color: UIColor.greenColor(), size: size)
    }
    
    func createGrid(rows: Int, _ columns: Int)
    {
        self.rows = rows
        self.cols = columns
        
        for r in 0..<rows
        {
            for c in 0..<columns
            {
                let point = getPoint(r, c)
                print(point)
                let shape = SKSpriteNode(color: UIColor.purpleColor(), size: CGSizeMake(40, 40))
                shape.position = point
                addChild(shape)
            }
        }
    }
    
    private func getPoint(row: Int, _ column: Int) -> CGPoint
    {
        let width  = self.frame.width  / CGFloat(self.rows + 1)
        let height = self.frame.height / CGFloat(self.cols + 1)
        
        let x = -self.frame.width  / CGFloat(2)
        let y = -self.frame.height / CGFloat(2)
        
        return CGPointMake(x + CGFloat(column + 1) * width, y + CGFloat(row + 1) * height)
    }
    
}
