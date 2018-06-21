//
//  InstrumentData.swift
//  Instrumentally
//
//  Created by C4Q on 6/4/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import Foundation

struct InstrumentData {
    static let intruments: [Instrument] = [
        Instrument(image: "piano", name: "Piano", audioFile: Bundle.main.url(forResource: "Piano", withExtension: "m4a")!),
        Instrument(image: "Acoustic-Guitar", name: "Acoustic Guitar", audioFile: Bundle.main.url(forResource: "AcousticGuitar", withExtension: "m4a")!),
        Instrument(image: "drum", name: "Drum", audioFile: Bundle.main.url(forResource: "Drums", withExtension: "m4a")!),
        Instrument(image: "electric-guitar", name: "Electric Guitar", audioFile: Bundle.main.url(forResource: "ElectricGuitar", withExtension: "m4a")!),
        Instrument(image: "maracas", name: "Maracas", audioFile: Bundle.main.url(forResource: "Maracas", withExtension: "m4a")!),
        Instrument(image: "Trumpet", name: "Trumpet", audioFile: Bundle.main.url(forResource: "Trumpet", withExtension: "m4a")!),
    ]
}
