//
//  Laboror.swift
//  testterm
//
//  Created by snlcom on 2023/06/06.
//

import SwiftUI

struct LabororView: View {
    @EnvironmentObject var dataModel: Text1
    private var currentDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: Date())
    }
    @State private var inputText: [String] = Array(repeating: "", count: 20)
    @State private var shouldGenerateQRCode = false

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(currentDate)
                    .font(.subheadline)
            }
            .padding(.horizontal)
            Text("Today's Safety Rules")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            
            List(0..<20, id: \.self) { index in
                Group {
                    Text(dataModel.inputText[index])
                        .font(.title)
                        .multilineTextAlignment(.center)
                    TextField(dataModel.inputText[index], text: $inputText[index])
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding()
                
            }
            
            Button(action: {
                if inputText == dataModel.inputText{
                    shouldGenerateQRCode.toggle()
                }
            }) {
                Text("COMPLETE")
            }
            
            if shouldGenerateQRCode {
                QRView()
            }
        }
        .padding()
        .background(Color.white)
    }
}
