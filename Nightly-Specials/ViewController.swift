//
//  ViewController.swift
//  Nightly-Specials
//
//  Created by Brennan Twiggs on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dayPicker: UIPickerView!
    
    @IBOutlet weak var entree: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    var weekDays = ["Monday","Tuesday","Wednesday","Thursday","Friday"]
    var entrees = ["Lasagna","Meatloaf","Stuffed Peppers","Chicken Pot Pie","Baby Back Ribs"]
    var prices = ["$9.99","$10.99","$11.99","$12.99","$13.99"]


    
    override func viewDidLoad() {
        super.viewDidLoad()
        dayPicker.delegate = self
        dayPicker.dataSource = self
        entree.text = entrees[0]
        price.text = prices[0]
        image.image = UIImage(named: "img0")
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weekDays.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        weekDays[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        entree.text = entrees[row]
        price.text = prices[row]
        image.image = UIImage(named: "img\(row)")
    }
}

