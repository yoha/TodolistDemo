//
//  AddNoteViewController.swift
//  TodolistDemo
//
//  Created by Yohannes Wijaya on 10/15/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
  
  // MARK: - IBOutlet Properties
  
  @IBOutlet weak var addNoteTextField: UITextField!
  
  // MARK: - IBAction Properties
  
  @IBAction func cancelButtonDidTouch(sender: UIBarButtonItem) {
    let _ = self.navigationController?.popViewController(animated: true)
  }
  
}
