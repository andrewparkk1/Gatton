//
//  ProfileViewModel.swift
//  Gatton
//
//  Created by Andrew Park on 2/22/21.
//


import SwiftUI
import Firebase

class ProfileViewModel: ObservableObject {
    
    @Published var userInfo = UserModel(username: "", pic: "", bio: "", uid: "", year : 0, city: "", state: "", interests: "")
    @AppStorage("current_status") var status = false
    
    //image picker for updating image
    @Published var picker = false
    @Published var img_data = Data(count: 0)
    
    //loading view
    @Published var isLoading = false
    @Published var isEditing = false
    
    let ref = Firestore.firestore()
    let uid = Auth.auth().currentUser!.uid
    
    init() {
        fetchUser(uid: uid) { (user) in
            self.userInfo = user
        }
    }
    
    func switchEdit() {
        isEditing.toggle()
    }
    
    

}


