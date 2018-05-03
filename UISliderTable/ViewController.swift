//
//  ViewController.swift
//  UISliderTable
//
//  Created by D7703_18 on 2018. 5. 3..
//  Copyright © 2018년 201312421. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    var i=0
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tbl.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        cell.textLabel?.text=String(i)
        i=i+1
        return cell
    }
    

    @IBOutlet weak var tbl: UITableView!
    @IBOutlet weak var mySlide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tbl.dataSource=self
        tbl.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderMove(_ sender: Any) {
        tbl.reloadData()
    }
    

}

