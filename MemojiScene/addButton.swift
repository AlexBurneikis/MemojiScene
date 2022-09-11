//
//  addButton.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 11/9/2022.
//

import SwiftUI
import SceneKit
import SceneView

struct addButton: View {
    let assetPath: String
    
    var body: some View {
        Button {
            addToPreview(named: assetPath)
        } label: {
            SceneView(scene: SCNScene(named: assetPath)!, options: [.autoenablesDefaultLighting])
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}
