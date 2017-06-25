//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Asim Zaidi on 6/22/17.
//  Copyright © 2017 asimzaidi.com. All rights reserved.
//

import UIKit
//This are our protocols, our tableview has to implement these bc Apple wrote all this cool code under the hood that rececyles views and gets the data for you so we don't have to do any of that.. but we have to listen for the events so u can work with your table view
class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //weak def: ur viewController is holding a weak reference to the tableview itself bc your IBOutlet is on top of your view, it's also holding a reference so you don't need two things holding a strong reference to it because if that view goes out of memory of this viewCon you may have a memory leak so it's important for one of them to be weak so we don't need our IBOutlets to ever be strong.. in most cases.
    @IBOutlet weak var tableView: UITableView!
    //we're creating an array and the parenthsis is used to initialize it
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //We are creating a new instance of the class to create an object
        
        let p1 = PartyRock(imageURL: "https://images.genius.com/fcb761c85fba7c00fb0fe4a8357b80c9.400x400x1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JH_qWGu9LjQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Don't Look Down")
        
        let p2 = PartyRock(imageURL: "https://pbs.twimg.com/profile_images/878078514314063872/Ve1kptWj_400x400.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JH_qWGu9LjQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Roll With Me")
        
        let p3 = PartyRock(imageURL: "https://pbs.twimg.com/media/C9uEOQRXkAA40H7.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JH_qWGu9LjQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Possible")
        
        let p4 = PartyRock(imageURL: "https://pbs.twimg.com/media/C8vM7wXXUAEJ0N0.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JH_qWGu9LjQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "MVP Part 2")
        
        let p5 = PartyRock(imageURL: "https://pbs.twimg.com/media/C6L9Y7oVUAAh2Se.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JH_qWGu9LjQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "We On It")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate =  self
        tableView.dataSource = self
        //later, Google how to protocols work in iOS
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        //place holder code to get rid of temp errors
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
        
        prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
            if let destination = segue.destination as? VideoVC {
                if let party = sender as? PartyRock {
                    destination.partyRock = party
                }
            }
        }
    }
    
    
}

