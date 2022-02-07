//
//  CubeView.swift
//  NikolaevAA_3.6
//
//  Created by Anton Nikolaev on 07.02.2022.
//

import SwiftUI

struct CubeView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farLine = size * 0.9
            let nearLine = size * 0.1
            
        }
    }
}

struct CubeView_Previews: PreviewProvider {
    static var previews: some View {
        CubeView()
            .frame(width: 200, height: 200)
    }
}
