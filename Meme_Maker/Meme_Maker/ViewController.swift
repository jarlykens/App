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
        
        let midLow = captionChoice(performance:"Mid Low", cpu: "CPU: Ryzen 3 1200", ram: "RAM: G.Skill Fortis 16 GB 2400 MHz", cpuCooler:"Heat Sink: Just use the one that came with the CPU.", mobo: "Motherboard: Asus Prime B450", gpu: "Video Card: Nvidia Geforce GTX 1060 6 GB", psu: "Power Supply: Corsair CX 450", comCase: "Case: Deep Cool Matrexx 55 (Fans are not included.)", ssd: "SSD: Kingston A400 240 GB", hdd: "Hard Drive: None", roughPrice: "Estimated Price: $700")
        
        let mid = captionChoice(performance:"Mid Low", cpu: "CPU: Ryzen 5 2400", ram: "RAM: Corsair Vengeance 16 GB 3000 MHz", cpuCooler: "Heat Sink: Just use the one that came with the CPU.", mobo: "Motherbaord: MSI Tomahawk B350", gpu: "Video Card: Nvidia Geforce RTX 2060", psu: "Power Supply: Corsair CX 450", comCase: "Case: Cooler Master Master Box MB600L", ssd: "SSD: Kingston A400 120 GB", hdd: "Hard Drive: Seagate Barracuda 1 TB", roughPrice: "Estimated Price: $1000")
        
        let midHigh = captionChoice(performance:"Mid High", cpu: "CPU: Ryzen 7 1700", ram: "RAM: G.Skill Trident Z RGB 16 GB 3200 MHz", cpuCooler:"Heat Sink: Just use the one that came with the CPU.", mobo: "Motherboard: MSI Tomahawk B450", gpu: "Video Card: Nvidia Geforce RTX 2070", psu: "Power Supply: EVGA SuperNOVA G3 650 W", comCase: "Case: Deep Cool Tesseract", ssd: "SSD: Western Digital Blue 1 TB M.2", hdd: "Hard Drive: None", roughPrice: "Estimated Price: $1400")
        
        let high = captionChoice(performance:"High", cpu: "CPU: Ryzen 7 2700 X", ram: "RAM: G.Skill Trident Z RGB 32 GB 3200 MHz", cpuCooler:"Heat Sink: Just use the one that came with the CPU.", mobo: "Motherboard: MSI Tomahawk B450", gpu: "Video Card: Nvidia Geforce RTX 2080", psu: "Power Supply: EVGA SuperNOVA G3 850 W", comCase: "Case: Deep Cool Tesseract", ssd: "SSD: Western Digital Blue 1 TB M.2", hdd: "Hard Drive: Seagate Barracuda 4 TB 5400 RPM", roughPrice: "Estimated Price: $2200")
       
        topChoices = [low, midLow, mid, midHigh, high]
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

