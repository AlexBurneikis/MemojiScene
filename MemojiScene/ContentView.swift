//
//  ContentView.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 9/9/2022.
//

import SwiftUI
import SceneKit
import SceneView

let alien = "alien.scnz"

let scene: SCNScene = { SCNScene(named: alien)! }()

struct ContentView: View {
    var body: some View {
        ZStack {
            SceneView(scene: scene)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
