//
//  CPProfile.swift
//  CoolestProjectCoinCollector
//
//  Created by Natasha Cole on 27/03/2017.
//  Copyright © 2017 Natasha Cole. All rights reserved.
//

import Foundation
import Firebase

struct CPProfile {
  
  let imageString: String
  let numberOfGems: NSDecimalNumber
  let numberOfGamesPlayed: NSDecimalNumber
  let totalGameScore: NSDecimalNumber
  let uniqueid: String
  let username: String
  
  init(imageString: String, numberOfGems: NSDecimalNumber, numberOfGamesPlayed: NSDecimalNumber, totalGameScore: NSDecimalNumber, uniqueid: String, username: String) {
    self.imageString = imageString
    self.numberOfGems = numberOfGems
    self.numberOfGamesPlayed = numberOfGamesPlayed;
    self.totalGameScore = totalGameScore
    self.uniqueid = uniqueid
    self.username = username;
  }
  
  func toAnyObject() -> Any {
    return [
      "imageString": imageString,
      "numberOfGems": numberOfGems,
      "numberOfGamesPlayed": numberOfGamesPlayed,
      "totalGameScore": totalGameScore,
      "uniqueid": uniqueid,
      "username": username
    ]
  }
  
}
