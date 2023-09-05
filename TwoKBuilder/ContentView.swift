//
//  ContentView.swift
//  TwoKBuilder
//
//  Created by Aleck David Holly on 2023-09-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PGs()
                .tabItem {
                    Image(systemName: "hand.point.up.fill")
                    Text("PGs")
                }
            SGs()
                .tabItem {
                    Image(systemName: "basketball.fill")
                    Text("SGs")
                }
            SFs()
                .tabItem {
                    Image(systemName: "forward.circle.fill")
                    Text("SFs")
                }
            PFs()
                .tabItem {
                    Image(systemName: "forward.end.alt")
                    Text("PFs")
                }
            Centers()
                .tabItem {
                    Image(systemName: "camera.metering.center.weighted")
                    Text("Centers")
                }
        }
        .onAppear {
            
        }
    }
}

#Preview {
    ContentView()
}
