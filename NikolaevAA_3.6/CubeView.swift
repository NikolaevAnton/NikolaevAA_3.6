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
            let identBig = 3 * size / 8
            let identSmall = size / 8
            let identGround = size -  size / 4
            let identBigFive = 5 * size / 8
            //let nearLine = size * 0.1
             
            
            Path { path in
                 path.move(to: CGPoint(x: 0, y: identBig))
                 path.addLine(to: CGPoint(x: identBig, y: identSmall))
                 path.addLine(to: CGPoint(x: size, y: identSmall))
                 path.addLine(to: CGPoint(x: size, y: identGround))
                 path.addLine(to: CGPoint(x: identBigFive, y: size))
                 path.addLine(to: CGPoint(x: 0, y: size))
                 path.addLine(to: CGPoint(x: 0, y: identBig))
                 path.addLine(to: CGPoint(x: identBigFive, y: identBig))
                 path.addLine(to: CGPoint(x: identBigFive, y: size))
                 path.move(to: CGPoint(x: identBigFive, y: identBig))
                 path.addLine(to: CGPoint(x: size, y: identSmall))
            }
            .stroke()
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: size))
                path.addLine(to: CGPoint(x: identBig, y: identGround))
                path.addLine(to: CGPoint(x: size, y: identGround))
                path.move(to: CGPoint(x: identBig, y: identGround))
                path.addLine(to: CGPoint(x: identBig, y: identSmall))
            }
            .stroke(
                style: StrokeStyle(
                    lineWidth: 1, dash: [8])
            )
        }
    }
}

struct CubeView_Previews: PreviewProvider {
    static var previews: some View {
        CubeView()
            .frame(width: 200, height: 200)
    }
}
