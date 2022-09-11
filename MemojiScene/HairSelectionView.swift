//
//  HairSelectionView.swift
//  MemojiScene
//
//  Created by Alexander Burneikis on 11/9/2022.
//

import SwiftUI
import SceneKit
import SceneView

struct HairSelectionView: View {
    func makeButtonSection(assetPaths: [String]) -> some View {
        LazyVStack {
            ForEach(0..<assetPaths.count/3, id: \.self) { index in
                HStack {
                    addButton(assetPath: assetPaths[index*3])
                    addButton(assetPath: assetPaths[index*3+1])
                    addButton(assetPath: assetPaths[index*3+2])
                }
            }
        }
    }
    var body: some View {
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

struct HairSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        HairSelectionView()
    }
}
