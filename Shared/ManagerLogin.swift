//
//  Laboror.swift
//  testterm
//
//  Created by snlcom on 2023/06/06.
//

import SwiftUI

struct ManagerLogin: View {

    @State var LoginAccessGranted = false
    @State var ID: String = ""
    @State var IDText: String = ""
    
    var body: some View {
        VStack{
            Text("Type your verification number to log in:")
                .padding()
            IDSection
                .padding()
            NavigationLink("", destination: ManagerView(), isActive: $LoginAccessGranted)
            Button("Log in", action: {
                if !ID.isEmpty{
                    if  LoginInfo.managers[ID] != nil{
                        self.LoginAccessGranted = true
                    }
                }
            }).padding()
        }
    }
    private var IDSection: some View {
        TextField("Verification Number", text: $ID)
    }
}
