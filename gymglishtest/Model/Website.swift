//
//  Website.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import Foundation
import UIKit

struct Website {
    
    private var title: String
    private var description: String
    private var url: String
    private var image: UIImage
    
    init(title: String, description: String, url: String, image: UIImage) {
        self.title = title
        self.description = description
        self.url = url
        self.image = image
    }
    
    public mutating func setTitle(_ title: String) {
        self.title = title
    }
    public func getTitle() -> String {
        return self.title
    }
    
    public mutating func setDescription(_ description: String) {
        self.description = description
    }
    public func getDescription() -> String {
        return self.description
    }
    
    public mutating func setUrl(_ url: String) {
        self.url = url
    }
    public func getUrl() -> String {
        return self.url
    }
    
    public mutating func setImage(_ image: UIImage) {
        self.image = image
    }
    public func getImage() -> UIImage {
        return self.image
    }
    
}
