//
//  MemojiPreviewView.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 11/9/2022.
//

import SwiftUI
import SceneKit
import SceneView

let scene = SCNScene()

struct MemojiPreviewView: View {
    var body: some View {
        SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
            .frame(height: 300)
            .onAppear {
                addToPreview(named: assetPaths.head.rawValue)
            }
    }
}

struct MemojiPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        MemojiPreviewView()
    }
}
