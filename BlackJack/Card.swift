//
//  Card.swift
//  BlackJack
//
//  Created by Ryan Sayles on 4/26/20.
//  Copyright © 2020 Ryan Sayles. All rights reserved.
//

import Foundation

struct Card {
    
    enum Suit: CaseIterable {
        case spades
        case clubs
        case hearts
        case diamonds
    }
    
    enum Rank: Int, CaseIterable {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack, .queen, .king:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }

    
    private var suit: Suit
    private var rank: Rank
    
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
}
