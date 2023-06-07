//
//  LabororLogin.swift
//  termproject_team9 (iOS)
//
//  Created by 고영민 on 2023/06/06.
//

import SwiftUI

struct LabororLogin: View {

    @State var LoginAccessGranted = false
    @State var ID: String = ""
    @State var IDText: String = ""
    
    var body: some View {
        VStack{
            Text("Type your verification number to log in:").padding()
            IDSection.padding()
            NavigationLink("", destination: LabororView(), isActive: $LoginAccessGranted)
            Button("Log in", action: {
                if !ID.isEmpty{
                    if  LoginInfo.Laborors[ID] != nil{
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
