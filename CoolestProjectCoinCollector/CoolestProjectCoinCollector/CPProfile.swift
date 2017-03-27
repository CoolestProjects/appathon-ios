//
//  CPProfile.swift
//  CoolestProjectCoinCollector
//
//  Created by Natasha Cole on 27/03/2017.
//  Copyright © 2017 Natasha Cole. All rights reserved.
//

import Foundation

struct CPProfile {
  let imageString: String
  let numberOGems: String
  let numberOfGamesPlayed: String
  let totalGameScore: String
  let uniqueid: String
  let username: String
  
  init(imageString: String, numberOGems: String, numberOfGamesPlayed: String, totalGameScore: String,uniqueid: String, username: String ) {
    self.imageString = imageString
    self.numberOGems = numberOGems
    self.numberOfGamesPlayed = numberOfGamesPlayed;
    self.totalGameScore = totalGameScore
    self.uniqueid = uniqueid
    self.username = username;
  }
  
}
