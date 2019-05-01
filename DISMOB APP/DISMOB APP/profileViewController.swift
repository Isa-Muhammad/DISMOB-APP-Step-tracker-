//
//  profileViewController.swift
//  DISMOB APP[
//
//  Created by Isa Muhammad on 23/04/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import UIKit
class profileViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fetch data from database
        Node.get(.users).child("name").observeSingleEvent(of: .value, with: { [weak self] snapshot in
            guard let name = snapshot.value as? String else { return }
            self?.nameLabel.text = name
        })
        
        Node.get(.users).child("age").observeSingleEvent(of: .value, with: { [weak self] snapshot in
            guard let age = snapshot.value as? String else { return }
            self?.ageLabel.text = age
        })
        
        Node.get(.users).child("sex").observeSingleEvent(of: .value, with: { [weak self] snapshot in
            guard let sex = snapshot.value as? String else { return }
            self?.sexLabel.text = sex
        })
        
        Node.get(.users).child("height").observeSingleEvent(of: .value, with: { [weak self] snapshot in
            guard let height = snapshot.value as? String else { return }
            self?.heightLabel.text = height
        })
        
        Node.get(.users).child("weight").observeSingleEvent(of: .value, with: { [weak self] snapshot in
            guard let weight = snapshot.value as? String else { return }
            self?.weightLabel.text = weight
        })
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// weak self -> prevent retain cycle -> learn about that
