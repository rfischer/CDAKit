//
//  allergy_importer.swift
//  CDAKit
//
//  Created by Eric Whitley on 1/13/16.
//  Copyright © 2016 Eric Whitley. All rights reserved.
//

import Foundation
import Fuzi

class CDAKImport_CDA_VitalSignImporter: CDAKImport_CDA_ResultImporter {

  override init(entry_finder: CDAKImport_CDA_EntryFinder = CDAKImport_CDA_EntryFinder(entry_xpath: "//cda:observation[cda:templateId/@root='2.16.840.1.113883.3.88.11.83.14']")) {
    super.init(entry_finder: entry_finder)
    entry_class = CDAKVitalSign.self
  }
  
}
