//
//  CoreDataHelper.swift
//  Make School Note App
//
//  Created by Yveslym on 6/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//
import UIKit
import CoreData

struct CoreDataHelper {
    
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    // Method to create New Note
    static func newNote() -> Note {
        let note = NSEntityDescription.insertNewObject(forEntityName: "Note", into: context) as! Note
        
        return note
    }
    // method to save Note
    static func saveNote() {
        do {
            try context.save()
        } catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    // Method To Delete Context
    static func delete(note: Note) {
        context.delete(note)
        
        saveNote()
    }
}
