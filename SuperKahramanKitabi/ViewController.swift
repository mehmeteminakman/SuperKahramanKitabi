//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by mehmet emin akman on 27.01.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var kahramanİsimleri :[String] = []
    var kahramanGorselleri = [String]()
    var kullanıcınınSectigiKarIsmi=""
    var kullanıcınınSectigiKarGörseli=""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
        
        kahramanİsimleri.append("Batman")
        kahramanİsimleri.append("Spider-Man")
        kahramanİsimleri.append("Superman")
        kahramanİsimleri.append("İron Man")
        kahramanİsimleri.append("Captain America")
        kahramanİsimleri.append("Hulk")
        
        kahramanGorselleri.append("batman")
        kahramanGorselleri.append("spiderman")
        kahramanGorselleri.append("superman")
        kahramanGorselleri.append("ironman")
        kahramanGorselleri.append("captainamerica")
        kahramanGorselleri.append("hulk")
        
        
    }
    
    //numberOfRowInSection -> Kaç tane row olacak
    // cellforRow atIndexPath -> Hücrenin içerisinde neler gösterilecek
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kahramanİsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text = kahramanİsimleri[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullanıcınınSectigiKarIsmi=kahramanİsimleri[indexPath.row]
        kullanıcınınSectigiKarGörseli=kahramanGorselleri[indexPath.row]
        performSegue(withIdentifier: "toDetailVc", sender: nil)
        print(indexPath.row)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailVc"{
            let destinatonVc=segue.destination as! ViewControllertoDetail
            destinatonVc.secilenKarakterIsmi=kullanıcınınSectigiKarIsmi
            destinatonVc.secilenKarakterGorseli=kullanıcınınSectigiKarGörseli
            
        }
    }


}

