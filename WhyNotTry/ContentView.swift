//
//  ContentView.swift
//  WhyNotTry
//
//  Created by 혜주가짱 on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange]
    
    @State private var selected = "Baseball"
    
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundStyle(.white)
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }
            
            Spacer()
            
            Button("Try again") {
                withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
