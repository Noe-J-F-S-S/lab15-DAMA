//
//  ProfileView.swift
//  IBooks
//
//  Created by Mac41 on 2/12/22.
//

import SwiftUI

struct ProfileView: View {
    //crear una variable usando State
    //reactivo
    @State var name = "Noe"
    @StateObject var profileViewModel = ProfileViewModel()
    var body: some View {
        VStack{
            Text(name)
                .font(.title)
            Button{
                name = "Fernando"
                profileViewModel.greatting(name: "Jhon")
            } label: {
                Text("Cambiar nombre")
            }.padding(.top)
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
