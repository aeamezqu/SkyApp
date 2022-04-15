//
//  Planets.swift
//  SonifiedSkyApp
//
//  Created by Alejandro Amezquita on 4/4/22.
//

import Foundation


enum Planet: String, CaseIterable {
  case mercury
  case venus
  case earth
  case mars
  case jupiter
  case saturn
  case uranus
  case neptune
  case sun
  

  var name: String {
    rawValue.prefix(1).capitalized + rawValue.dropFirst()
  }
}

