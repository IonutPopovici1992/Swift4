//
//  Category.swift
//  CoderSwag
//
//  Created by John on 1/29/19.
//  Copyright © 2019 John. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }

}
