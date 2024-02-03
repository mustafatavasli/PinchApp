//
//  PageModel.swift
//  Pinch
//
//  Created by Mustafa TAVASLI on 3.02.2024.
//

import Foundation

struct Page : Identifiable {
    let id : Int
    let imageName : String
}

extension Page {
    var thumbnailName : String {
        return "thumb-" + imageName
    }
}
