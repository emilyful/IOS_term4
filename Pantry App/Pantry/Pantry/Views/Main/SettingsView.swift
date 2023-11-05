//
//  SettingsView.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import SwiftUI

enum Theme {
    static let primary = Color("Primary")
}

struct SettingsView: View {

    var body: some View {
            NavigationView{
                ZStack{
                    Theme.primary.ignoresSafeArea()
                   
                    Form{
                        
                        Section(header: Text("Display"),
                                footer: Text ("System settings will override Dark mode and use the current device settings"))
                        {
                            
                            Toggle(isOn: .constant(true),
                                   label: {
                                Text("Dark Mode")
                            })
                            
                            Toggle(isOn: .constant(true),
                                   label: {
                                Text("Use System settings")
                                
                            })
                            
                        }
                        Section(header: Text("Github Link")){
                            Link("Find the Github link here", destination: URL(string:"https://github.com/emilyful/IOS_term4")!)
                        }
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold))
                        
                        
                        Section(header: Text("App information")){
                            Text("App Name: Pantry")
                            Text("Version: v1.0.0")
                            Text("Description: Pantry, the recipe-storing app, simplifies meal planning by efficiently organizing and storing recipes for easy access, making cooking a delightful and organized experience.")
                            Text("Developer: Emily Fulford")
                        }
                    }
                }
                .padding(.vertical)
                .navigationTitle("Pantry Settings")
                Theme.primary.ignoresSafeArea()
                    
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View{
       SettingsView()
    }
}
