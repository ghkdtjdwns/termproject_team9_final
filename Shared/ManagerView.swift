//
//  ManagerView.swift
//  testterm
//
//  Created by snlcom on 2023/06/04.
//


import SwiftUI

struct ManagerView: View {
    @EnvironmentObject var dataModel: Text1
    private var currentDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: Date())
    }
    
    var body: some View {
        ScrollView {
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
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 16) {
                    ForEach(0..<20, id: \.self) { index in
                        TextField("Enter text", text: $dataModel.inputText[index])
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .padding()
            }
        }
    }
}
