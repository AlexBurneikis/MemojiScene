//
//  ContentView.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 9/9/2022.
//

import SwiftUI
import SceneKit
import SceneView

let scene = SCNScene()
let sceneView = SCNView()

func addSceneToScene(named: String) {
    let tempScene = SCNScene(named: named)!
    let tempNodes = tempScene.rootNode.childNodes
    for node in tempNodes {
        scene.rootNode.addChildNode(node)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
                .frame(height: 300)
                .onAppear {
                    addSceneToScene(named: assetPaths.head.rawValue)
                }
            HairSelectionView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
