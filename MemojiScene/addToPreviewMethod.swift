//
//  addToPreview.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 11/9/2022.
//

import SceneKit

func addToPreview(named: String) {
    let tempScene = SCNScene(named: named)!
    let tempNodes = tempScene.rootNode.childNodes
    for node in tempNodes {
        scene.rootNode.addChildNode(node)
    }
}
