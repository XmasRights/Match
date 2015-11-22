//
//  CardFactory.swift
//  Match
//
//  Created by Chris Home on 22/11/2015.
//  Copyright © 2015 Christmas House. All rights reserved.
//

import UIKit

enum CardType
{
    case BlankCard
}


class CardFactory: NSObject
{
    class func createCard(type: CardType) -> Card
    {
        switch (type)
        {
        case .BlankCard:
            return Card(imageNamed: "cardBack.png")
        }
    }
}
