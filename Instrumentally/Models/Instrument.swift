//
//  Instrument.swift
//  Instrumentally
//
//  Created by C4Q on 6/4/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import Foundation

class Instrument: Codable {
    var image: String
    var name: String
    var audioFile: String
    init(image: String, name: String, audioFile: String) {
        self.image = image
        self.name = name
        self.audioFile = audioFile
    }
}
