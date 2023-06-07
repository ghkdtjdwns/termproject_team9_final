//
//  StartView.swift
//  testterm
//
//  Created by snlcom on 2023/06/04.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                NavigationLink(destination: ManagerLogin()) {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.system(size: 135))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        Text("Manager")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                }
                
                NavigationLink(destination: LabororLogin()) {
                    VStack {
                        Image(systemName: "hammer.fill")
                            .font(.system(size: 100))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                        
                        Text("Laboror")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .padding()
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

