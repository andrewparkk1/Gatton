//
//  PostModel.swift
//  Gatton
//
//  Created by Andrew Park on 1/14/21.
//

import SwiftUI
import Foundation
import FirebaseFirestore
import FirebaseCore
import Firebase
import FirebaseFirestoreSwift

enum target: String {
    case general = "general", professors = "professors", classes = "classes", research = "research", qanda = "qanda", colleges = "colleges"
    func getTarget() -> String {
        return self.rawValue
    }
}


var AndrewsPostTestData = [
    Post(ttime: "3 months", description: "hello", target: target.general.getTarget()),
    Post(ttime: "6 minutes", description: "i like my research", target: target.research.getTarget())
]

var DavidsPostTestData = [
    Post(ttime: "2 hours", description: "i post vlogs", target: target.general.getTarget())
]

var CaseysPostTestData = [
    Post(ttime: "3 min", description: "Im the og", target: target.general.getTarget())
]

var JojisPostTestData = [
    Post(ttime: "just now", description: "i like professor xing", target: target.professors.getTarget())
]

var DonsPostTestData = [
    Post(ttime: "2 min", description: "why is cheryl so mean?", target: target.qanda.getTarget())
]

struct Post: Identifiable {
    @DocumentID var id: String?
    @ServerTimestamp var time: Timestamp?
    var ttime: String?
    var userId: Person.ID?
    var description: String
    var target: String
    
//    let dateFormatter = DateFormatter()
//     dateFormatter.dateFormat = /////"HH:mm"
//     let newDateString = dateFormatter.string(from: /////yourDate)
    
//    init (_ description: String, _ time: Timestamp) {
//        self.description = description
//        self.time = time
//    }
    
    
    // create ability to upload photos
//    init (description: String, time: Timestamp) {
//        self.description = description
//        self.time = time
//        self.pic = pic
//    }
//
    
}

