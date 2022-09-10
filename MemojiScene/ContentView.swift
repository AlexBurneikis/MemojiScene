//
//  ContentView.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 9/9/2022.
//

import SwiftUI
import SceneKit
import SceneView

let head = "memoji/assets/faces/head.aa/main.scnz"
let afro_long_down_sidePart = "memoji/assets/hair/hair_afro_long_down_sidePart.aa/main.scnz"

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
                    let faceScene = SCNScene(named: head)!
                    let faceNodes = faceScene.rootNode.childNodes
                    for node in faceNodes {
                        scene.rootNode.addChildNode(node)
                    }
                }
            List {
                Button {
                    let hairScene = SCNScene(named: afro_long_down_sidePart)!
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
