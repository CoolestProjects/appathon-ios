//
//  CPGame.swift
//  CoolestProjectCoinCollector
//
//  Created by Natasha Cole on 27/03/2017.
//  Copyright © 2017 Natasha Cole. All rights reserved.
//

import Foundation

struct CPGame {
  let gameId: NSDecimalNumber
  let title: String
  let infoFromExhibition: String
  let gameContent: String
  let directions: String
  
  init(gameId: NSDecimalNumber, title: String, infoFromExhibition: String, gameContent: String, directions: String) {
    self.gameId = gameId
    self.title = title
    self.infoFromExhibition = infoFromExhibition;
    self.gameContent = gameContent
    self.directions = directions
  }
}

