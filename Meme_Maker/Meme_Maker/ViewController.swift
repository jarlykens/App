//
//  ViewController.swift
//  Meme_Maker
//
//  Created by Student on 3/3/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!//cpu
    
    @IBOutlet weak var ramLabel: UILabel!
    
    @IBOutlet weak var cpuCoolerLabel: UILabel!
    
    @IBOutlet weak var moboLabel: UILabel!
    
    @IBOutlet weak var gpuLabel: UILabel!
    
    @IBOutlet weak var psuLabel: UILabel!
    
    @IBOutlet weak var comCaseLabel: UILabel!
    
    @IBOutlet weak var ssdLabel: UILabel!
    
    @IBOutlet weak var hddLabel: UILabel!
    
    @IBOutlet weak var roughPriceLabel: UILabel!
    
    var topChoices = [captionChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let low = captionChoice(performance:"Low", cpu: "CPU: Ryzen 3 2200 G", ram: "RAM: Team - Vulcan 8 GB 3000 MHz", cpuCooler:"Heat Sink: Just use the one that came with the CPU.", mobo: "Motherboard: Asus Prime B450", gpu: "Video Card: Just use the integrated graphics", psu: "Power Supply: Corsair CX 450", comCase: "Case: Deep Cool Tesseract", ssd: "SSD: Kingston A400 240 GB", hdd: "Hard Drive: None", roughPrice: "Estimated Price: $500")
        
        let midLow = captionChoice(performance:"Mid Low", cpu: "CPU: Ryzen 3 1200", ram: "RAM: G Skill Fortis 16 GB 2400 MHz", cpuCooler:"Heat Sink: Just use the one that came with the CPU.", mobo: "Motherboard: Asus Prime B450", gpu: "Video Card: Nvidia Geforce GTX 1060 6 GB", psu: "Power Supply: Corsair CX 450", comCase: "Case: Deep Cool Matrexx 55 (Fans are sold seperately.)", ssd: "SSD: Kingston A400 240 GB", hdd: "Hard Drive: None", roughPrice: "Estimated Price: $700")
        
        let mid = captionChoice(performance:"Mid Low", cpu: "CPU: Ryzen 5 2400", ram: "RAM: Corsair Vengeance 16 GB 3000 MHz", cpuCooler: "Heat Sink: Just use the one that came with the CPU.", mobo: "Motherbaord: MSI Tomahawk B350", gpu: "Video Card: Nvidia RTX 2060", psu: "Power Supply: Corsair CX 450", comCase: "Case: Cooler Master Master Box MB600L", ssd: "SSD: Kingston A400 120 GB", hdd: "Hard Drive: Seagate Barracuda 1 TB", roughPrice: "Estimated Price: $1000")
        
        let midHigh = captionChoice(performance:"Mid High", cpu: "CPU: Intel Core i7 8700 K", ram: "RAM: Team - Vulcan 8 GB 3000 MHz", cpuCooler:"Heat Sink: Just use the one that came with the CPU.", mobo: "Motherboard: Asus Prime B450", gpu: "Video Card: Just use the integrated graphics", psu: "Power Supply: Corsair CX 450", comCase: "Case: Deep Cool Tesseract", ssd: "SSD: Kingston A400 240 GB", hdd: "Hard Drive: None", roughPrice: "Estimated Price: $500")
       
        topChoices = [low, midLow, mid, midHigh]
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices{
            topCaptionSegmentedControl.insertSegment(withTitle: choice.performance, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
       
        
        updateLables()
        
    }
    
    override func  didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLables()
    {
        
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        
        
        let topChoice = topChoices[topIndex]
       
        
        topCaptionLabel.text = topChoice.cpu
        
        ramLabel.text = topChoice.ram
    
        cpuCoolerLabel.text = topChoice.cpuCooler
        
        moboLabel.text = topChoice.mobo
        
        gpuLabel.text = topChoice.gpu
        
        psuLabel.text = topChoice.psu
        
        comCaseLabel.text = topChoice.comCase
        
        ssdLabel.text = topChoice.ssd
        
        hddLabel.text = topChoice.hdd
        
        roughPriceLabel.text = topChoice.roughPrice
        
    }
 
    @IBAction func choiceSelected(_ sender: Any) {
        
        updateLables()
        
    }
    
    
    
    
}

