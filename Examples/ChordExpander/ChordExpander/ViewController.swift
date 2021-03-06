//
//  ViewController.swift
//  ChordExpander
//
//  Created by Ben Guo on 5/10/15.
//  Copyright (c) 2015 Ben Guo. All rights reserved.
//

import Cocoa
import MusicKit

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let midi = MIDI(name: "ChordExpander")
        midi.noteMessageHandler = { messages in
            if let first = messages.first {
                midi.send([first, first.transpose(2), first.transpose(3)])
            }
        }
    }
}

