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
        @State var hidden: Bool = true
        return (
            Button {
                addSceneToScene(named: assetPath)
            } label: {
                SceneView(scene: SCNScene(named: assetPath)!, options: [.autoenablesDefaultLighting])
                    .frame(width: 100, height: 100)
                //            Text(assetPath)
            }
                .padding()
        )
    }
    
    func makeThreeButtons(pathOne: String, pathTwo: String, pathThree: String) -> some View {
        HStack {
            makeAddButton(assetPath: pathOne)
            makeAddButton(assetPath: pathTwo)
            makeAddButton(assetPath: pathThree)
        }
    }
    
    func makeButtonSection(assetPaths: [String]) -> some View {
        //for every element in the array, make a button, every three buttons make a new row
        LazyVStack {
            ForEach(0..<assetPaths.count/3, id: \.self) { index in
                makeThreeButtons(pathOne: assetPaths[index*3], pathTwo: assetPaths[index*3+1], pathThree: assetPaths[index*3+2])
            }
        }
    }
    
    var body: some View {
        VStack {
            SceneView(scene: scene, options: [.allowsCameraControl, .autoenablesDefaultLighting])
                .frame(height: 300)
                .onAppear {
                    addSceneToScene(named: assetPaths.head.rawValue)
                }
            ScrollView {
                makeButtonSection(assetPaths: {
                    var paths: [String] = []
                    for path in assetPaths.hair.allCases {
                        paths.append(path.rawValue)
                    }
                    return paths
                }())
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
