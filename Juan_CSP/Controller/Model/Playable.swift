//
//  Playable.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 11/20/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit
import Foundation

public protocol Playable{
    var playState : Bool {get set}
    func play() -> Void
    func isPlayed() -> Bool
}
