//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Asim Zaidi on 6/23/17.
//  Copyright © 2017 asimzaidi.com. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        //async is background thread
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                //snyc is the thread where the user interface can be updated
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
    }

}
