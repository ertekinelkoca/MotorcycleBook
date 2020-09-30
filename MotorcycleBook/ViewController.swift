//
//  ViewController.swift
//  MotorcycleBook
//
//  Created by mac on 29.09.2020.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var motorArray = [Motorcycle]()
    var chosenMotorcycle : Motorcycle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        //Motorcycle Objects
        let bmw = Motorcycle(modelName: "S1000RR", modelDescription: "HP4", modelView: UIImage(named: "HP4")!)
        let kawasaki = Motorcycle(modelName: "ZX10R", modelDescription: "RR", modelView: UIImage(named: "zx10r")!)
        let yamaha = Motorcycle(modelName: "R1", modelDescription: "M Carbon", modelView: UIImage(named: "yzfr1")!)
        let honda = Motorcycle(modelName: "CBR1000RR", modelDescription: "FIREBLADE SP", modelView: UIImage(named: "cbr1000rrsp")!)
        let suzuki = Motorcycle(modelName: "GSXR-1300", modelDescription: "HAYABUSA", modelView: UIImage(named: "gsxr1000")!)
        
        motorArray.append(bmw)
        motorArray.append(kawasaki)
        motorArray.append(yamaha)
        motorArray.append(honda)
        motorArray.append(suzuki)
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return motorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = motorArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMotorcycle = motorArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedMotorcycle = chosenMotorcycle            
        }
    }

}

