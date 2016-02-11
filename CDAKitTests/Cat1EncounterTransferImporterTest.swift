//
//  Cat1EncounterTransferImporterTest.swift
//  CCDAccess
//
//  Created by Eric Whitley on 1/21/16.
//  Copyright © 2016 Eric Whitley. All rights reserved.
//

import XCTest
import Fuzi

class Cat1EncounterTransferImporterTest: XCTestCase {

  

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_encounter_transfer_importing() {
      let si = HDSImport_CDA_EncounterImporter(entry_finder: HDSImport_CDA_EntryFinder(entry_xpath: "//cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.24.3.23']"))
      let xmlString = TestHelpers.fileHelpers.load_xml_string_from_file("encounter_performed_fragment")
      var doc: XMLDocument!

      do {
        doc = try XMLDocument(string: xmlString)
        doc.definePrefix("cda", defaultNamespace: "urn:hl7-org:v3")
        
        let nrh = HDSImport_CDA_NarrativeReferenceHandler()
        nrh.build_id_map(doc)
        
        let encounters = si.create_entries(doc)
        //print(encounters)
        
      } catch {
        print("boom")
      }

    }
  
}
