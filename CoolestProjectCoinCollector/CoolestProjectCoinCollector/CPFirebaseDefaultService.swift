//
//  CPFirebaseDefaultService.swift
//  CoolestProjectCoinCollector
//
//  Created by Natasha Cole on 01/04/2017.
//  Copyright © 2017 Natasha Cole. All rights reserved.
//

import UIKit
import Firebase

class CPFirebaseDefaultService: UIViewController {
  let uuid = UUID().uuidString
  var hasUserAccount = false
  var profiles: [CPProfile] = []
  var games: [CPGame] = []
  var beacons: [CPBeacon] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  //Completion block
  func getProfileWithCompletionBlock() -> Bool {
    let ref = FIRDatabase.database().reference(withPath: "profiles")
    ref.observe(.value, with: { snapshot in
      if let snapshots = snapshot.children.allObjects as? [FIRDataSnapshot] {
        for snap in snapshots {
          
          let data : NSDictionary = snap.value as! NSDictionary
          let profiles = data.allValues as! [NSDictionary]
          
          for profile in profiles {
            let imageString = profile["imageString"] as! String
            let numberOfGems = profile["numberOfGems"] as! NSDecimalNumber
            let numberOfGamesPlayed = profile["numberOfGamesPlayed"] as! NSDecimalNumber
            let totalGameScore = profile["totalGameScore"] as! NSDecimalNumber
            let uniqueid = profile["uniqueid"] as! String
            let username = profile["username"] as! String
            let pro = CPProfile(imageString: imageString, numberOfGems: numberOfGems, numberOfGamesPlayed: numberOfGamesPlayed, totalGameScore: totalGameScore, uniqueid: uniqueid, username: username)
            if pro.uniqueid == self.uuid {
              
            }
            self.profiles.append(pro)
          }
          
          for profile in self.profiles {
            if profile.uniqueid == self.uuid {
              self.hasUserAccount = true;
            }
          }
          
        }
      }
    })
    return self.hasUserAccount
  }
  
  func getGamesWithCompletionBlock() {
    let ref = FIRDatabase.database().reference(withPath: "games")
    ref.observe(.value, with: { snapshot in
      if let snapshots = snapshot.children.allObjects as? [FIRDataSnapshot] {
        for snap in snapshots {
          
          let data : NSDictionary = snap.value as! NSDictionary
          let games = data.allValues as! [NSDictionary]
          
          for game in games {
            let gameId = game["gameId"] as! NSDecimalNumber
            let title = game["title"] as! String
            let infoFromExhibition = game["infoFromExhibition"] as! String
            let gameContent = game["gameContent"] as! String
            let directions = game["directions"] as! String
            let game = CPGame(gameId: gameId, title: title, infoFromExhibition: infoFromExhibition, gameContent: gameContent, directions: directions)
            
            self.games.append(game)
          }
        }
      }
    })
  }
  
  func getBeaconsWithCompletionBlock() {
    let ref = FIRDatabase.database().reference(withPath: "beacon")
    ref.observe(.value, with: { snapshot in
      if let snapshots = snapshot.children.allObjects as? [FIRDataSnapshot] {
        for snap in snapshots {
          
          let data : NSDictionary = snap.value as! NSDictionary
          let beacons = data.allValues as! [NSDictionary]
          
          for beacon in beacons {
            let major = beacon["major"] as! String
            let minor = beacon["minor"] as! String
            let taskName = beacon["taskName"] as! String
            let uuid = beacon["uuid"] as! String
            
            let beacon = CPBeacon(major: major, minor: minor, taskName: taskName, uuid: uuid)
            
            self.beacons.append(beacon)
          }
        }
      }
    })
  }
}
