//
//  CarouselExapleView.swift
//  Example
//
//  Created by Piotr Wilk on 24/04/2023.
//

import SwiftUI
import Carousel

struct CarouselExapleView: View {
    @State private var cards = Card.exapleCards
    @State private var currentIndex: Int = 0
    private let itemWidth: CGFloat = UIScreen.main.bounds.width * 0.7
    
    var body: some View {
        VStack {
            Text("Hello card \(currentIndex)")
                .fontWeight(.semibold)
                .padding()
            
            CarouselView(items: cards, spacing: 0, currentIndex: $currentIndex) { item in
                Text(item.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: itemWidth, height: 400)
                    .background(item.color)
                    .cornerRadius(12)
            }
        }
        .navigationTitle("Carousel")
    }
}

struct CarouselExapleView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselExapleView()
    }
}
