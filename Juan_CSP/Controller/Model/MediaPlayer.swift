//
//  MediaPlayer.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 11/20/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class MediaPlayer : Playable{
    private var mediaColor : UIColor
    public var mediaState: Bool
    
    public init(){
        self.mediaColor = UIColor()
        self.mediaState = false
    }
    public func play() -> Void{
        print("I am media player")
        mediaState = true
    }
    public func isPlayed() -> Bool {
        if (mediaState){
            print("I play")
        }
        else{
            print("I Don't play")
        }
        return mediaState
    }
}
