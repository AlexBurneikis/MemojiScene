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

struct ContentView: View {
    private var hairSelection: String = "afro_long_down_sidePart"
    var body: some View {
        VStack {
            SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
                .frame(height: 300)
                .onAppear {
                    //add the face scene into the scene
                    let faceScene = SCNScene(named: assetPaths.head.rawValue)!
                    let faceNodes = faceScene.rootNode.childNodes
                    for node in faceNodes {
                        scene.rootNode.addChildNode(node)
                    }
                }
            List {
                Button {
                    let hairScene = SCNScene(named: assetPaths.hair_afro_long_down_sidePart.rawValue)!
                    let hairNodes = hairScene.rootNode.childNodes
                    for node in hairNodes {
                        scene.rootNode.addChildNode(node)
                    }
                } label: {
                    Text("Add Hair")
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
