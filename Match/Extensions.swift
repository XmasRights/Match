//
//  Extensions.swift
//  Match
//
//  Created by Chris Home on 23/11/2015.
//  Copyright © 2015 Christmas House. All rights reserved.
//

import UIKit

extension CGRect
{
    func getCentre() -> CGPoint
    {
        return CGPointMake(CGRectGetMidX(self), CGRectGetMidY(self))
    }
}