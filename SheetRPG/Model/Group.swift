//
//  Group.swift
//  SheetRPG
//
//  Created by Alexander Parreira on 04/09/23.
//

import Foundation
import RealmSwift

final class Group: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var _id = ObjectId.generate()
    
    @Persisted var sheets =  RealmSwift.List<Sheet>()
    
    @Persisted var ownerId = ""
    
}
