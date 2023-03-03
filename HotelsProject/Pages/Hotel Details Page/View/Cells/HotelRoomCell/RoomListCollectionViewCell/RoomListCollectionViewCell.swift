//
//  RoomListCollectionViewCell.swift
//  HotelsProject
//
//  Created by Adlan Nourindiaz on 02/03/23.
//

import UIKit

class RoomListCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RoomListCollectionViewCell"

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var roomImage: UIImageView!
    
    @IBOutlet weak var titleRoom: UILabel!
    
    @IBOutlet weak var descRoom: UILabel!
    
    @IBOutlet weak var ratingIcons: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        self.contentView.layer.cornerRadius = 15
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        
        roomImage.layer.cornerRadius = 10
        
        backgroundColor = .clear // very important
        backgroundColor = .clear // very important
        backView.layer.masksToBounds = true
        backView.layer.shadowOpacity = 0.3
        backView.layer.shadowRadius = 4
        backView.layer.shadowOffset = CGSize(width: 3, height: 3)
        backView.layer.shadowColor = UIColor.black.cgColor

        titleRoom.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        
    }
    
    func configure(roomModel: Room) {
        roomImage.image = UIImage(named: roomModel.roomImg)
        titleRoom.text = roomModel.roomTitle
        descRoom.text = roomModel.roomClass
    }

}
