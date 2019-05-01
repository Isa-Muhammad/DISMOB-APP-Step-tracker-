//
//  homeViewController.swift
//  DISMOB APP[
//
//  Created by Isa Muhammad on 23/04/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import UIKit
import CoreMotion

class homeViewController: UIViewController {
    
    //CMPedometer instance
    var pedometerData = CMPedometer()
    var numberOfSteps:Int! = nil
    
    // timers
    var timer = Timer()
    var timerInterval = 1.0
    var timeElapsed:TimeInterval = 1.0
    @IBOutlet weak var calLabel: UILabel!
    


    
    //MARK: - Outlets
    @IBOutlet weak var stepsLabel: UILabel!
    @IBAction func startButton(_ sender: UIButton)
    {
        if sender.titleLabel?.text == "Start"{
            //Start the pedometer
            pedometerData = CMPedometer()
            pedometerData.startUpdates(from: Date(), withHandler: { (pedometerData, error) in
                if let pedData = pedometerData{
                    
                    // calculate calories burned
                    let steps = pedData.numberOfSteps
                    let calories = steps.floatValue / 20
                    
                    self.stepsLabel.text = "\(steps)"
                    self.calLabel.text = "\(calories)"
                } else {
                    self.stepsLabel.text = "Not Available"
                }
            })
            sender.setTitle("Stop", for: .normal)
        } else {
            //Stop the pedometer
            pedometerData.stopUpdates()
            
            sender.setTitle("Start", for: .normal)
        }
    }
    
    
    // display the updated data
    func displayPedometerData(){
        timeElapsed += 1.0
        //Number of steps
        if let numberOfSteps = self.numberOfSteps{
            stepsLabel.text = String(format:"Steps: %i",numberOfSteps)
        }
    }
    
    
    //MARK: - timer functions
    func startTimer(){
        if timer.isValid { timer.invalidate() }
        timer = Timer.scheduledTimer(timeInterval: timerInterval,target: self,selector: #selector(timerAction(timer:)) ,userInfo: nil,repeats: true)
    }
    
    func stopTimer(){
        timer.invalidate()
        displayPedometerData()
    }
    
    @objc func timerAction(timer:Timer){
        displayPedometerData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        // Do any additional setup after loading the view.
    }
    
   
    
    
}
