//
//  ContentView.swift
//  WhyNotTry
//
//  Created by 혜주가짱 on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .padding()
            .overlay(
                Image(systemName: "figure.archery")
                    .font(.system(size: 144))
                    .foregroundStyle(.white)
            )
    }
}

#Preview {
    ContentView()
}
