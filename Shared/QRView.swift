//
//  QRView.swift
//  testterm
//
//  Created by snlcom on 2023/06/04.
//

import SwiftUI

struct QRView: View {
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("QR")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Image("QRexample") // assets에서 이미지 로드
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .padding()
    }
}

struct QRView_Previews: PreviewProvider {
    static var previews: some View {
        QRView()
    }
}

