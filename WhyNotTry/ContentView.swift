//
//  ContentView.swift
//  WhyNotTry
//
//  Created by 혜주가짱 on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket"]
    
    @State var selected = "Baseball"
    
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack {
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundStyle(.white)
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }
            
            Button("Try again") {
                selected = activities.randomElement() ?? "Archery"
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
