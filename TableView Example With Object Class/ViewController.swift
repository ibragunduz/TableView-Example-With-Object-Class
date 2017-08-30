//
//  ViewController.swift
//  TableView Example With Object Class
//
//  Created by ibrahim gunduz on 30.08.2017.
//  Copyright © 2017 ibragunduz. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{
    
    var persons = [Person]()
    
   
    var selectedItem = Person()
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializePersons()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let dest = segue.destination as! PersonDetailsViewController
            
            dest.person = selectedItem
            
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = persons[indexPath.row].name
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: nil)
        
        
        
    }
    
    
    func initializePersons(){
        let person1 = Person()
        person1.name = "Ibrahim Gündüz"
        person1.gender = "Male"
        person1.id = 1635
        person1.image = UIImage(named: "ibrahim.jpg")!
        person1.info = "He is a Turk"
        
        persons.append(person1)
        let person2 = Person()
        person2.name = "Elon Musk"
        person2.gender = "Male"
        person2.id = 459
        person2.image = UIImage(named: "elon.jpeg")!
        person2.info = "It is a south african "
        
        persons.append(person2)
        
        
        let person3 = Person()
        person3.name = "Nikola Tesla"
        person3.gender = "Male"
        person3.id = 235
        person3.image = UIImage(named: "tesla.jpeg")!
        person3.info = "He is a croat "
        
        persons.append(person3)
        
        
        let person4 = Person()
        person4.name = "Steve Jobs"
        person4.gender = "Male"
        person4.id = 854
        person4.image = UIImage(named: "steve.jpg")!
        person4.info = "It is an american "
        
        persons.append(person4)
        
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

