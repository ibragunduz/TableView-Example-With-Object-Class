//
//  PersonDetailsViewController.swift
//  TableView Example With Object Class
//
//  Created by ibrahim gunduz on 30.08.2017.
//  Copyright © 2017 ibragunduz. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet weak var labelPersonName: UILabel!
    
    @IBOutlet weak var labelPersonInfo: UILabel!
    @IBOutlet weak var imageViewPerson: UIImageView!
    
    var person = Person()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageViewPerson.image = person.image
        labelPersonName.text = "His name is : \(person.name)"
        labelPersonInfo.text = "Id : \(person.id) and Gender : \(person.gender) \nSome info : \(person.info)"
        
        
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
