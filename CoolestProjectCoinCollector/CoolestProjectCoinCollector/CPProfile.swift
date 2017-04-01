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
  let numberOfGems: String
  let numberOfGamesPlayed: String
  let totalGameScore: String
  let uniqueid: String
  let username: String
  let key: String
  let ref: FIRDatabaseReference?
  
  init(imageString: String, numberOfGems: String, numberOfGamesPlayed: String, totalGameScore: String,uniqueid: String, username: String,  key: String = "" ) {
    self.imageString = imageString
    self.numberOfGems = numberOfGems
    self.numberOfGamesPlayed = numberOfGamesPlayed;
    self.totalGameScore = totalGameScore
    self.uniqueid = uniqueid
    self.username = username;
    self.key = key
    self.ref = nil
  }
  
  init(snapshot: FIRDataSnapshot) {
    key = snapshot.key
    let dict : NSDictionary = snapshot.value as! NSDictionary
    //To do: Convert into dictionary
    imageString = ""
    numberOfGems = ""
    numberOfGamesPlayed = ""
    totalGameScore = ""
    uniqueid = ""
    username = ""
    ref = snapshot.ref
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
