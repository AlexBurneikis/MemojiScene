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
    
    func makeAddButton(assetPath: String) -> some View {
        Button {
            addSceneToScene(named: assetPath)
        } label: {
            SceneView(scene: SCNScene(named: assetPath)!, options: [.autoenablesDefaultLighting])
                .frame(width: 100, height: 100)
        }
        .padding()
    }
    
    var body: some View {
        VStack {
            SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
                .frame(height: 300)
                .onAppear {
                    addSceneToScene(named: assetPaths.head.rawValue)
                }
            VStack {
                HStack {
                    makeAddButton(assetPath: assetPaths.hair.hair_afro_medium_up.rawValue)
                    makeAddButton(assetPath: assetPaths.hair.hair_curly_medium_up.rawValue)
                    makeAddButton(assetPath: assetPaths.hair.hair_microBraid_medium_mid.rawValue)
                }
                Spacer()
            }
            .frame(maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
