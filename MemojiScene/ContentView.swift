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
let dog = "dog.scnz"

let scene = SCNScene()
let sceneView = SCNView()

struct ContentView: View {
    var body: some View {
        VStack {
            SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
                .frame(height: 300)
                .onAppear {
                    //add the alien scene into the scene
                    let alienScene = SCNScene(named: alien)!
                    let alienNodes = alienScene.rootNode.childNodes
                    for node in alienNodes {
                        scene.rootNode.addChildNode(node)
                    }
                }
            List {
                //make a button for dog and alien
                Button(action: {
                    //remove all nodes from the scene
                    scene.rootNode.enumerateChildNodes { (node, _) in
                        node.removeFromParentNode()
                    }
                    //add the dog scene into the scene
                    let dogScene = SCNScene(named: dog)!
                    let dogNodes = dogScene.rootNode.childNodes
                    for node in dogNodes {
                        scene.rootNode.addChildNode(node)
                    }
                }, label: {
                    Text("Dog")
                })
                Button(action: {
                    //remove all nodes from the scene
                    scene.rootNode.enumerateChildNodes { (node, _) in
                        node.removeFromParentNode()
                    }
                    //add the alien scene into the scene
                    let alienScene = SCNScene(named: alien)!
                    let alienNodes = alienScene.rootNode.childNodes
                    for node in alienNodes {
                        scene.rootNode.addChildNode(node)
                    }
                }, label: {
                    Text("Alien")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
