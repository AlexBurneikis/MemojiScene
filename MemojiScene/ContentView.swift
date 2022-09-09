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

let scene = SCNScene()
let sceneView = SCNView()

struct ContentView: View {
    var body: some View {
        VStack {
            SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
                .frame(width: 300, height: 300)
                .onAppear {
                     let node = SCNNode()
                     node.geometry = SCNSphere(radius: 0.5)
                     node.geometry?.firstMaterial?.diffuse.contents = UIColor.red
                     node.position = SCNVector3(0, 0, -1)
                     scene.rootNode.addChildNode(node)
                }
            List {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
