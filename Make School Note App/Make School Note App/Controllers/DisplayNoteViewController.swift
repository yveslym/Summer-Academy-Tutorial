//
//  DisplayNoteViewController.swift
//  Make School Note App
//
//  Created by Yveslym on 6/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {

    // - MARK: IBOUTLET
    
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var noteContentTextView: UITextView!
    
    
    // -MARK: PROPERTIES
    
    var note = Note(){
        didSet{
            DispatchQueue.main.async {
                self.noteTitleLabel.text = self.note.title
                self.noteContentTextView.text = self.note.content
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
