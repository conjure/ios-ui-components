//
//  Card.swift
//  Example
//
//  Created by Piotr Wilk on 24/04/2023.
//

import SwiftUI

struct Card: Hashable {
    let caption: String
    let color: Color
    
    static var exapleCards: [Card] {
        let colors: [Color] = [.orange, .purple, .green, .blue, .gray]
        let captions = (0...3).map{"Item \($0)"}
        
        var result = [Card]()
        for i in 0..<captions.count {
            let item = Card(caption: captions[i], color: colors[i])
            result.append(item)
        }
        
        return result
    }
}
