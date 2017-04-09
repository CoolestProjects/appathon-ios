//
//  CPBeacon.swift
//  CoolestProjectCoinCollector
//
//  Created by Natasha Cole on 27/03/2017.
//  Copyright © 2017 Natasha Cole. All rights reserved.
//

import Foundation

struct CPBeacon {
  let major: String
  let minor: String
  let taskName: String
  let uuid: String
  
  init(major: String, minor: String, taskName: String, uuid: String) {
    self.major = major;
    self.minor = minor;
    self.taskName = taskName;
    self.uuid = uuid;
  }
}

